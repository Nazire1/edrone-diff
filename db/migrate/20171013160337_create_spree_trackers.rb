class CreateSpreeEdrones < SpreeExtension::Migration[4.2]
  def change
    if table_exists?(:spree_edrones)
      add_index :spree_edrones, :active unless index_exists?(:spree_edrones, :active)
      remove_column :spree_edrones, :environment if column_exists?(:spree_edrones, :environment)
      unless column_exists?(:spree_edrones, :engine)
        add_column :spree_edrones, :kind, :integer, default: 0, null: false, index: true unless column_exists?(:spree_edrones, :kind)
        rename_column :spree_edrones, :kind, :engine if column_exists?(:spree_edrones, :kind)
      end
    else
      create_table :spree_edrones do |t|
        t.string 'edrone_app_id'
        t.string 'edrone_app_secret'
        t.boolean 'active', default: true, index: true
        t.datetime 'created_at', null: false
        t.datetime 'updated_at', null: false
        t.integer 'engine', default: 0, null: false, index: true
      end
    end
  end
end

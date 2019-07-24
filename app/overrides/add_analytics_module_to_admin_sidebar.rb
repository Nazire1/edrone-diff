if Gem.loaded_specs['spree_core'].version >= Gem::Version.create('3.5.0')
  Deface::Override.new(
    virtual_path: 'spree/admin/shared/sub_menu/_configuration',
    name: 'add_edrone_module_to_admin_configurations_sidebar_menu',
    insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
    original: '72f6a33afb2627a467ae458d42991ab0ce4cc6df',
    text: '<%= configurations_sidebar_menu_item(Spree.t(:edrone_module), spree.admin_edrones_path) if can? :manage, Spree::Edrone %>'
  )
end

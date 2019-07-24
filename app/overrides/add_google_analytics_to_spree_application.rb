if Gem.loaded_specs['spree_core'].version >= Gem::Version.create('3.5.0.alpha')
  Deface::Override.new(
    virtual_path: 'spree/layouts/spree_application',
    name: 'add_edrone_module_to_spree_application',
    insert_top: "[data-hook='body']",
    partial: 'spree/shared/edrone_module',
    original: 'cfa30a2831d9a41394c03229cd28b3c7eee69585'
  )
end

if defined?(Spree::StoreController)
  Spree::StoreController.class_eval do
    helper Spree::EdronesHelper
  end
end

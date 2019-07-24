unless FactoryBot.factories.registered?(:edrone)
  FactoryBot.define do
    factory :edrone, class: Spree::Edrone do
      edrone_app_id { '' }
      edrone_app_secret { '' }
      active { true }
    end
  end
end

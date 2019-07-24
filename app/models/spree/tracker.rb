module Spree
  class Edrone < Spree::Base
    TRACKING_ENGINES = %i(google_analytics segment).freeze
    enum engine: TRACKING_ENGINES

    after_commit :clear_cache

    validates :edrone_app_id, presence: true, uniqueness: { scope: :engine, case_sensitive: false }

    scope :active, -> { where(active: true) }

    def self.current(engine = TRACKING_ENGINES.first)
      edrone = Rails.cache.fetch("current_edrone/#{engine}") do
        send(engine).active.first
      end
      edrone.edrone_app_id.present? ? edrone : nil if edrone
    end

    def clear_cache
      TRACKING_ENGINES.each do |engine|
        Rails.cache.delete("current_edrone/#{engine}")
      end
    end
  end
end
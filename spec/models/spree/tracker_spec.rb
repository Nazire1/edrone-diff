require 'spec_helper'

describe Spree::Edrone, type: :model do
  describe 'current' do
    it 'returns the first active edrone' do
      edrone = create(:edrone)
      edrone.clear_cache
      expect(Spree::Edrone.current).to eq(edrone)
    end

    it 'does not return an inactive edrone' do
      edrone = create(:edrone, active: false)
      edrone.clear_cache
      expect(Spree::Edrone.current).to be_nil
    end
  end
end

require 'rails_helper'

RSpec.describe TryAnglesController, type: :controller do
  context 'Checks Triangle Type' do
    it 'validates three out of three sides are equal' do
      Tryangle = isTriangle(3,3,3)
      expect(Tryangle).to be(true)
    end
    it 'validates two out of three sides are equal' do
      Tryangle = isTriangle(1,3,3)
      expect(Tryangle).to be(true)
    end
    it 'validates no sides are equal' do
      Tryangle = isTriangle(1,2,3)
      expect(Tryangle).to be(true)
    end
  end
end

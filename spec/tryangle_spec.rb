
require_relative '../lib/tryangle'

RSpec.describe "isTriangle" do
  context 'Equilateral' do
    it "should return Equilateral when all three sides are equal" do
      expect(isTriangle(3,3,3)).to eq("Equilateral")
    end
  end

  context 'Isosceles' do
    it "should return Isosceles when two out of three sides are equal" do
      expect(isTriangle(1,2,2)).to eq("Isosceles")
    end
  end
    context 'Scalene' do
      it "should return Scalene when no sides are equal to eachother" do
        expect(isTriangle(1,2,3)).to eq("Scalene")
      end
    end

    context 'isNotTriangle' do
      it "Should return Triangle cannot exist when one of the sides are greater
                                                          than the other two" do
        expect(isNotTriangle(20,30,100)).to eq("Triangle Cannot Exist")
      end
    end
  end

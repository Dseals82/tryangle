
require_relative '../lib/tryangle'

RSpec.describe "isTriangle" do
  context 'Equilateral' do
    it "should return Equilateral when all three sides are equal" do
      expect(isTriangle(1,1,1)).to eq("Equilateral")
    end
    it "should return Equilateral when all three sides are equal" do
      expect(isTriangle(2,2,2)).to eq("Equilateral")
    end
    it "should return Equilateral when all three sides are equal" do
      expect(isTriangle(3,3,3)).to eq("Equilateral")
    end
  end

  context 'Isosceles' do
    it "should return Isosceles when two out of three sides are equal" do
      expect(isTriangle(1,2,2)).to eq("Isosceles")
    end
    it "should return Isosceles when two out of three sides are equal" do
      expect(isTriangle(2,2,1)).to eq("Isosceles")
    end
    it "should return Isosceles when two out of three sides are equal" do
      expect(isTriangle(2,1,2)).to eq("Isosceles")
    end
  end
    context 'Scalene' do
      it "should return Scalene when no sides are equal to eachother" do
        expect(isTriangle(1,2,3)).to eq("Scalene")
      end
      it "should return Scalene when no sides are equal to eachother" do
        expect(isTriangle(3,2,1)).to eq("Scalene")
      end
      it "should return Scalene when no sides are equal to eachother" do
        expect(isTriangle(2,1,3)).to eq("Scalene")
      end
    end

    context 'isNotTriangle' do
      it "raises" do
    expect { ArgumentError.new }.to raise_error(isNotTriangle(100,50,50))
  end
    end
  end

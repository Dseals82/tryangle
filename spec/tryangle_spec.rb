
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
    it "should return True" do
      expect(isEquilateral(3,3,3)).to eq(true)
    end
    it "should return False" do
      expect(isEquilateral(3,3,1)).to eq(false)
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
    it "should return True" do
      expect(isIsosceles(2,1,2)).to eq(true)
    end
    it "should return False" do
      expect(isIsosceles(3,1,2)).to eq(false)
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
      it "should return True" do
        expect(isScalene(2,2,7)).to eq(true)
      end
      it "should return False" do
        expect(isScalene(3,3,3)).to eq(false)
      end
    end

    context 'isNotTriangle' do
      it "raises error if one side exceeds the sum of the other two sides" do
    expect { ArgumentError.new(isNotTriangle(1,1,10)) }.to raise_error("Triangle Cannot Exist")
  end
      it "raises error if one side exceeds the sum of the other two sides" do
    expect { ArgumentError.new(isNotTriangle(1,10,1)) }.to raise_error("Triangle Cannot Exist")
    end
      it "raises error if one side exceeds the sum of the other two sides" do
    expect { ArgumentError.new(isNotTriangle(10,1,1)) }.to raise_error("Triangle Cannot Exist")
  end
    end
  end

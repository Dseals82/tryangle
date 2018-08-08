# frozen_string_literal: true
def isTriangle(side1, side2, side3)
  raise ArgumentError, 'Invalid Triangle' if invalidTriangle(side1, side2, side3)
  return 'Equilateral' if isEquilateral(side1, side2, side3)
  return 'Isosceles' if isIsosceles(side1, side2, side3)
  return 'Scalene' if isScalene(side1, side2, side3)
end

def invalidTriangle(side1, side2, side3)
  ((side1 + side2) < side3) ||
      ((side2 + side3) < side1) ||
      ((side1 + side3) < side2)
end

def isEquilateral(side1, side2, side3)
  side1 == side2 && side1 == side3
end

def isIsosceles(side1, side2, side3)
  side1 == side2 && side1 != side3 ||
      side2 == side3 || side1 == side3
end

def isScalene(side1, side2, side3)
  (side1 != side2 && side1 != side3) &&
      (side2 != side1 && side2 != side3) &&
      (side3 != side1 && side3 != side2)
end

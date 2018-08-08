# frozen_string_literal: true

def isTriangle(a, b, c)
  raise ArgumentError, 'Invalid Triangle' if invalidTriangle(a, b, c)
  return 'Equilateral' if isEquilateral(a, b, c)
  return 'Isosceles' if isIsosceles(a, b, c)
  return 'Scalene' if isScalene(a, b, c)
end

def invalidTriangle(a, b, c)
  ((a + b) < c) ||
    ((b + c) < a) ||
    ((a + c) < b)
end

def isEquilateral(a, b, c)
  a == b && a == c
end

def isIsosceles(a, b, c)
  a == b && a != c || b == c || a == c
end

def isScalene(a, b, c)
  (a != b && a != c) &&
    (b != a && b != c) &&
    (c != a && c != b)
end

def isNotTriangle(a, b, c)
  raise ArgumentError, 'Triangle Cannot Exist' if ((a + b) < c) ||
                                                  ((b + c) < a) ||
                                                  ((a + c) < b)
end

def isTriangle(a, b, c)
  isNotTriangle(a, b, c)
  return 'Equilateral' if isEquilateral(a, b, c)
  return 'Isosceles' if isIsosceles(a, b, c)
  return 'Scalene' if isScalene(a, b, c)
end

def isEquilateral(a, b, c)
  a == b && a == c
end

def isIsosceles(a, b, c)
  a == b && a != c || b == c || a == c
end

def isScalene(a, b, c)
  (a != b && a != c) && (b != a && b != c) && (c != a && c != b)
end

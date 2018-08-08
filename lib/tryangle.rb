def isNotTriangle(a, b, c)
  raise ArgumentError, 'Triangle Cannot Exist' if ((a + b) < c) ||
                                                  ((b + c) < a) ||
                                                  ((a + c) < b)
end

def isTriangle(a, b, c)
  if isEquilateral(a, b, c)
    'Equilateral'
  elsif isIsosceles(a, b, c)
    'Isosceles'
  elsif isScalene(a, b, c)
    'Scalene'
  else isNotTriangle(a, b, c)
  end
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

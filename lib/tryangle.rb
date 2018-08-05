
def isTriangle(a,b,c)
  if isEquilateral(a,b,c)
    "Equilateral"
  elsif isIsosceles(a,b,c)
    "Isosceles"
  elsif isScalene(a,b,c)
    "Scalene"
  else isNotTriangle(a,b,c)
  end
end
# I wish I could put this lower half of code in a partial... note to self: check for solution
def isNotTriangle(a,b,c)
  if a > b && c or b > a && c or c > a && b
    raise ArgumentError.new("Triangle Cannot Exist")
  end
end

def isEquilateral(a,b,c)
  a == b && a==c
end

def isIsosceles(a,b,c)
  a == b && a != c or b == c or a == c
end

def isScalene(a,b,c)
  (a != b && c) or (b != a && c) or (c != a && b)
end

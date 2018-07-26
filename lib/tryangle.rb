def isTriangle(a, b, c)
if a == b && a==c
  "Equilateral"
elsif
  a == b && a != c or b == c or a == c
  "Isosceles"
else
  "Scalene"
end
end


  def isTriangle(a, b, c)
  if a == b && a==c
    "Equalateral"
  elsif
    a == b && a != c or b == c or a == c
    "Isosceles"
  else
    "Scalene"
  end
end

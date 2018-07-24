class TryAnglesController < ApplicationController
  def isTriangle(a, b, c)
  if a == b && a==c
    puts "Equalateral"
  elsif
    a == b && a != c or b == c or a == c
    puts "Isosceles"
  else
    puts "Scalene"
  end
end

end

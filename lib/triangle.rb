class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

def kind
inspect_sides(@a, @b, @c)
  if (@a == @b && @b == @c && @a == @c) 
    :equilateral
  elsif (@a == @b || @a == @c || @b == @c)
    :isosceles
  else  
    :scalene
  end
end

def inspect_sides(a, b, c)
  if (a > 0 && b > 0 && c > 0 && a + b > c && a + c > b && b + c > a)
    true
  else
    raise TriangleError
  end
end

class TriangleError < StandardError
  def message
    "This is not a valid triangle"
  end
end
end

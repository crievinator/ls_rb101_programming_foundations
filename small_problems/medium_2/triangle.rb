=begin

Problem:

- input = array of 3 lengths of the triangle
- output = 3 terms which check if sides are all equal, all different or 2 sides are equal & 3rd different

Extra:

- check sum of length of 2 shortest > length of longest.
- all sides > 0

Examples:

- clear

Data structure & Algorithm:

First check if it's valid?

- sum of shortest bigger than third => we should pop the max value & compare it to the two left?
- zero check

Then go and check what kind of triangle it is:
- array with lengths
- uniq check to see what term we should use (if 1, 2 or 3)
=end

require 'pry'

def non_zero?(array)
  array.none? { |length| length.zero? }
end

def sum_shortest?(array)
  array.min(2).sum > array.max
end

def valid_triangle?(array)
  non_zero?(array) && sum_shortest?(array)
end

def check_type(lengths)
  case
  when lengths.uniq.count == 1 then return :equilateral
  when lengths.uniq.count == 2 then return :isosceles
  when lengths.uniq.count == 3 then return :scalene
  end
end

def triangle(num1, num2, num3)
  lengths = [num1, num2, num3]

  if valid_triangle?(lengths) 
    check_type(lengths)
  else
    return :invalid
  end

end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

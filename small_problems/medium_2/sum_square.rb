def sum_square_difference(n)
  first_part = (1..n).reduce(:+) ** 2 
  second_part = (1..n).reduce(0) { |sum, num| sum + num ** 2}
  first_part - second_part
end

p sum_square_difference(3)

p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
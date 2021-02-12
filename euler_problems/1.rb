def sum_of_multiples_of_3_or_5(num)
  numbers = (0...num).to_a.select { |i| i % 3 == 0 || i % 5 == 0}
  p numbers
  numbers.sum
end


p sum_of_multiples_of_3_or_5(1000)
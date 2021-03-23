=begin

Problem:

- input = n (number that gives the amount of stars in the middle and defines the grid)
- output = display diamand with *

Example:

- see description

Data structure & Algorithm:

- using center do display * correctly
- using an array to represent the odd values upto n
- using a reverse array to represnt the odd value from n downto 1
- using the puts command to print & start a new line

=end

def row(num)
  if num == 1 
    "*"
  else
    '*' + ' ' * (num - 2) + '*'
  end
end

def display_half(array, n)
  array.each do |el|
    puts row(el).center(n)
  end
end

def diamond(n)
  first_half =  (1..n-1).to_a.select { |n| n % 2 == 1}
  second_half = first_half.reverse

  display_half(first_half, n)
  puts row(n)
  display_half(second_half, n)
end

diamond(1)
diamond(3)
diamond(5)
diamond(9)

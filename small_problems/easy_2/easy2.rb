# puts "What's your name?"
# name = gets.chomp

# name = "Teddy" if name.empty?

# puts "#{name} is #{rand(20..200)} years old"

# puts "Length?"
# length = gets.chomp.to_f
# puts "Width"
# width = gets.chomp.to_f

# area_in_square_meters = length * width
# area_in_square_feet = area_in_square_meters * 10.7639

# puts "Area is #{area_in_square_meters} square meters which equals #{area_in_square_feet} square feet"

# puts "Bill amount"
# bill_amount = gets.chomp.to_f

# puts "Tip?"
# tip_percentage = gets.chomp.to_f

# percentage = tip_percentage / 100
# tip = (bill_amount * percentage)
# total = (tip + bill_amount)

# puts "The tip is $#{format("%.2f", tip)}"
# puts "The total is $#{format("%.9f", total)}"


# puts "age"
# age = gets.chomp.to_i

# puts "retire?"
# retire = gets.chomp.to_i

# to_go = retire - age
# puts "It's 2021. you will retire in #{2021 + to_go}, #{to_go} years"

# puts "Hi, what's your name?"
# name = gets.chomp

# if name.end_with?("!")
#   name.chop!
#   puts "HI #{name.upcase}, WHY ARE WE SCREAMING??"
# else
#   puts "Hi #{name}!"
# end

# p name 

# for i in 1..99
#   puts i if i.odd?
# end

# (1..99).to_a.each do |i| 
#   if i.odd?
#     puts i
#     puts i.class
#   end
# end


# value = 1
# while value < 100
#   puts value
#   value += 1
# end

# 1.upto(99).each do |i| 
#   if i.odd?
#     puts i
#     puts i.class
#   end
# end

# numbers = (1..99).to_a
# numbers.select! do |num|
#   num % 2 != 0
# end

# puts ">> give us your number please"
# number = gets.chomp.to_i

# puts "Do you want to product (p) or sum (s)"
# operation = gets.chomp

# if operation == 'p'
#   total = (1..number).reduce(:*)
#   puts total
# elsif operation == 's'
#   total = (1..number).reduce(:+)
#   puts total
# else 
#   puts "Please choose 'p' or 's'!"
# end

# index = 1
# numbers = []
# loop do 
#   puts "Enter the #{index} number"
#   number = gets.chomp.to_i
#   numbers << number

#   index += 1
#   break if index == 7
# end

# last_number = numbers.pop

# p numbers.include?(last_number) ?  "yes!" : "no!"


# puts "First number:"
# first_number = gets.chomp
# puts "Second number:"
# second_number = gets.chomp

# operations = ['+', '-', '*', '/', '%', '**']

# operations.each do |operation|
#   puts "#{first_number} #{operation} #{second_number} = #{eval(first_number + operation + second_number)}"
# end

# sum = first_number + second_number
# sub = first_number - second_number
# multi = first_number * second_number
# div = first_number / second_number
# remainder = first_number % second_number
# power = first_number ** second_number


# puts "Please write a word or multiple words:"
# words = Kernel.gets.chomp
# words_without_spaces = words.split.join

# p words_without_spaces.length

# def multiply(a, b)
#   a * b
# end

# def square(n)
#   multiply(n, n)
# end

# def power_of_n(n, power)
#   result = 1
#   power.times do
#     result = multiply(n, result)
#   end
#   result
# end

# p power_of_n(5,3)

# def xor?(first, second)
#   (first == false && second == true) or (first == true && second == false)
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false


def oddities1(array)
  new_array = []
  array.each_with_index do |value, index|
    new_array << value if (index + 1).odd?
  end
  new_array
end

def oddities2(array)
  odd_elements = []
  index = 0

  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end


def oddities3(array)
  odd_elements = []
  index = 0

  while index < array.size
    odd_elements << array[index] if (index +1).odd?
    index += 1
  end
  odd_elements
end

def oddities(array)
  array.select do |item|
    counter = array.index(item) + 1
    counter.odd?
  end
end


p oddities([2, 3, 4, 5, 6])

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
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


puts "age"
age = gets.chomp.to_i

puts "retire?"
retire = gets.chomp.to_i

to_go = retire - age
puts "It's 2021. you will retire in #{2021 + to_go}, #{to_go} years"
number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
counter = 0

loop do
  break if counter == number_of_pets.size
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
# end

say_hello = 0

while say_hello < 5
  puts "#{say_hello} Hello!"
  say_hello += 1
end

5.times do |index|
  puts index
  break if index == 4
end


5.times do |index|
  puts index
  break if index < 7
end

number = 0

until number == 10
  number += 1
  puts number
end

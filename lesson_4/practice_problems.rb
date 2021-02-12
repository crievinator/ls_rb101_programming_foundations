#Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
result_array = []

flintstones.each_with_index do |value, i|
  arr = []
  arr << value << i 

  result_array << arr 
end

p result_array.to_h

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.sum

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |_,value| value >= 100  }

p ages

ages_hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages_hash.select! { |key, value| value < 100000}
p ages_hash.keep_if { |key, value| value < 100000}


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.find_index { |value| value.start_with?("Be")}

statement = "The Flintstones Rock"
statement.delete!(" ")

letters = statement.split('')
occurrences = Hash.new(0)

letters.each do |value|
  occurrences[value] += 1
end

p occurrences

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

def titleize(string)
  string.split(" ").map { |word| word.capitalize}.join(" ")
end

p titleize("The flintstones rock")

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 18, "gender" => "female"}
}

munsters.each do |key, value| 
  if value["age"].between?(0,17)
    value["age_group"] = "kid"
  elsif value["age"].between?(18,64)
    value["age_group"] = "adult"
  else 
    value["age_group"] = "senior"
  end
end

p munsters

numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
number = 0

until number == numbers.size
  odd_numbers << numbers[number] if number.to_i.odd?

  number += 1
end

p odd_numbers


numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []

numbers.each do |number|
  odd_numbers << number if number.to_i.odd?
end

p odd_numbers

numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
counter = 0

loop do
  number = numbers[counter].to_i

  odd_numbers << numbers[counter] unless number.even?

  counter += 1
  break if counter == numbers.size
end

p odd_numbers

numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []

for number in numbers
  if number.to_i.odd?
    odd_numbers.push(number)
  end
end

p odd_numbers
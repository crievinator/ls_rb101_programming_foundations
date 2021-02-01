require 'pp'

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
 vehicles.tally.each { |element, count| puts "#{element} => #{count}"}
end

count_occurrences(vehicles)
a = {yves: 29, ine:30}
puts "a is #{a} and has  #{a.object_id}"
puts "first element is #{a[:yves]} and has  #{a[:yves].object_id}"
puts "second element is #{a[:ine]} and has  #{a[:ine].object_id}"

a[:yves] = 35

puts "a is #{a} and has  #{a.object_id}"
puts "first element is #{a[:yves]} and has  #{a[:yves].object_id}"
puts "second element is #{a[:ine]} and has  #{a[:ine].object_id}"
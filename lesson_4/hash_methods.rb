a = {a: 1, b: 2, c: 3, d: 4, e: 5}

a.each { |x, y|puts "x: #{x}, y: #{y}"}
a.each_with_index { |(x, y), i|puts "x: #{x}, y: #{y}, i: #{i}"}
a.each_with_index { |pair, i|puts "x: #{pair[0]}, y: #{pair[1]}, i: #{i}"}

b = {a: 1, b: 2, c: 3, d: 4, e: 5}.each do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end

p b 

a = ['green', 'blue', 'red'].map do |word|
  puts word
  word.upcase
end

p a 
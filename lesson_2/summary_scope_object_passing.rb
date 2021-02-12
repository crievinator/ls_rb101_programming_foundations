# puts "INTEGER EXAMPLE"

# a = 5
# puts "value of a: #{a}"
# puts "obj_id: #{a.object_id}"

# p '--'
# 3.times do |i|
#   a = 1
#   puts "value of a: #{a}"
#   puts "#{a.object_id}"
# end
# p '--'

# puts "value of a: #{a}"
# puts "#{a.object_id}"



# puts "STRING EXAMPLE"

# a = 'test'
# puts "value of a: #{a}"
# puts "obj_id: #{a.object_id}"

# p '--'
# 3.times do |i|
#   a = 'hio'
#   puts "value of a: #{a}"
#   puts "#{a.object_id}"
# end
# p '--'

# puts "value of a: #{a}"
# puts "#{a.object_id}"

# puts "OTHER STRING EXAMPLE"

# a = 'test'
# puts "value of a: #{a}"
# puts "obj_id: #{a.object_id}"
# b = ''
# puts "obj_id: #{b.object_id}"
# p '--'
# 3.times do |i|
#   b = a.upcase
#   puts "value of a: #{a}"
#   puts "#{a.object_id}"
#   puts "value of b: #{b}"
#   puts "#{b.object_id}"
# end
# p '--'

# puts "value of a: #{a}"
# puts "#{a.object_id}"

# puts "value of a: #{b}"
# puts "#{b.object_id}"
p '----------------'
puts "METHOD INVOCATION WITH A BLOCK - ASSIGMENT"

a = 1

puts "value of a: #{a}"
puts "obj_id: #{a.object_id}"

loop do 
  puts "value of a in block: #{a}"
  puts "obj_id in block: #{a.object_id}"
  a = 2
    puts "value of a: #{a}"
    puts "obj_id: #{a.object_id}"
  break if a
end

puts "value of a: #{a}"
puts "obj_id: #{a.object_id}"

p '----------------'
puts "METHOD INVOCATION WITH A BLOCK - INCREMENT ASSIGNMENT"

a = 1

puts "value of a: #{a}"
puts "obj_id: #{a.object_id}"

loop do 
  a += 1
    puts "value of a: #{a}"
    puts "obj_id: #{a.object_id}"
  break if a
end

puts "value of a: #{a}"
puts "obj_id: #{a.object_id}"

p '----------------'
puts "METHOD DEFINITION - CHECK OBJECT IN DEF"

def increment(number)
  puts "value of number: #{number}"
  puts "obj_id: #{number.object_id}" 
end

b = 1

puts "value of b: #{b}"
puts "obj_id: #{b.object_id}"

increment(b)

puts "value of b: #{b}"
puts "obj_id: #{b.object_id}" 


p '-----------------'
puts "METHOD DEFINITION - INCREMENT"

def increment(number)
  number += 1
  puts "value of number: #{number}"
  puts "obj_id: #{number.object_id}" 
end

c = 1

puts "value of c: #{c}"
puts "obj_id: #{c.object_id}"

increment(c)

puts "value of c: #{c}"
puts "obj_id: #{c.object_id}" 

p '-----------------'
puts "METHOD DEFINITION - INCREMENT with a block (test)"

def increment(number)
  yield
  number += 1
  puts "value of number: #{number}"
  puts "obj_id: #{number.object_id}" 
  puts "value of yield: #{yield}"
  p "--"
end

c = 1

puts "value of c: #{c}"
puts "obj_id: #{c.object_id}"

increment(c) {c = 3}

puts "value of c: #{c}"
puts "obj_id: #{c.object_id}" 

p '--------------'

puts "EASY RANDOM TEST"

def test(b)
  puts "value of b (first in method): #{b}"
  puts "obj_id: #{b.object_id}"
  b += 1
  puts "value of b (second in method): #{b}"
  puts "obj_id: #{b.object_id}"
end

a = 1

puts "value of a (begin): #{a}"
puts "obj_id: #{a.object_id}"

test(a) 

puts "value of a (end): #{a}"
puts "obj_id: #{a.object_id}"
p '--------------'

puts "MEDIUM SUPER RANDOM TEST"

def test(b)
  yield
  puts "value of yield: #{yield}"

  puts "value of b (first in method): #{b}"
  puts "obj_id: #{b.object_id}"
  b += 1
  puts "value of b (second in method): #{b}"
  puts "obj_id: #{b.object_id}"
end

a = 1

puts "value of a (begin): #{a}"
puts "obj_id: #{a.object_id}"

test(a) { a += 1}

puts "value of a (end): #{a}"
puts "obj_id: #{a.object_id}"


def method(param)
  param += ' universe'
  param << ' world'
  p param
end
str = 'hello'
method(str)
puts str #=> output = 'hello'


def fix(value)
  value.upcase
  value.concat('!')
  value
end

s = 'hello'
p '---'
t = fix(s)

p s 
p "=="
p t 





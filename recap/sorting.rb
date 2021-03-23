a = [1,2,3,4,5,6,7,8]
b = ['aa', 'bbb', 'cccc', 'ddddd']

p b.sort {|a, b|   a.length <=> b.length }

c =  b.sort_by  do |word| 
  word.length
end

c.to_a 
p c 


d = [
  { :foo => 'foo', :bar => 2 },
  { :foo => 'foo', :bar => 3 },
  { :foo => 'foo', :bar => 5 },
]

e = d.sort_by do |hash|
  hash[:bar]
end

p "eeeeeee"
p e 

p "ffffffffffff"

f = d.sort do |a, b|
   b[:bar] <=> a[:bar] 
end

p f


hash = { yves: 29, ine: 30}

sorted_hash = hash.sort do |a, b|
  p a 
  p b 
  a <=> b 
end

p sorted_hash

other_sorted_hash = hash.sort_by do |obj|
  p obj
end

p other_sorted_hash

another_hash = hash.sort_by do |a, b|
  p a 
  p b 
end

hash = { yves: 29, ine: 30, a: 50}

test = hash.sort do |(a, b), (c, d)|
  c <=> a  
end

p test 

arr1 = ["a", "b", "c"]
puts "arr1 #{arr1.object_id}"
arr1.each {|obj| puts "#{obj} in arr1 has object id: #{obj.object_id}"}
p "-----------"
arr2 = arr1.dup
puts "arr2 #{arr2.object_id}"
arr2.each {|obj| puts "#{obj} in arr2 has object id: #{obj.object_id}"}

puts "NOW UPCASE"
arr2 = arr2.map do |char|
  char.upcase
end

puts "arr1 #{arr1.object_id}"
arr1.each {|obj| puts "#{obj} in arr1 has object id: #{obj.object_id}"}

puts "arr2 #{arr2.object_id}"
arr2.each {|obj| puts "#{obj} in arr2 has object id: #{obj.object_id}"}


p arr1 
p arr2 
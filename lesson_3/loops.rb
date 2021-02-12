# loop do end (break next)
# while do end
# until do end
# for i in .. do end
# begin .. end while ...

counter = 0
loop do 
  puts "Something: #{counter}"
  counter += 1
  break if counter == 10
end

p "-"

counter = 0
while counter < 10
  puts "Something #{counter}"
  counter += 1
end

p "-"

counter = 0
until counter == 10 
  puts "Something #{counter}"
  counter += 1
end

p "-"

for i in 1..10
  puts "Something #{i}"
end

p "-"

i = 0
begin
  puts "Something #{i}"
  i += 1
end while i < 10 

p "- iterator"

10.times { |number| puts "Something #{number}"}
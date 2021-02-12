def greeting(string)
  puts string.object_id
end


def hi(number)
  puts number.object_id
end


name = "John"
p name.object_id
p '---'
greeting(name)

# p '==============='
# number = 15
# p number.object_id
# hi(number)
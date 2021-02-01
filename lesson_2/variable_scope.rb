# 2.times do
#   a = 'hi'
#   puts a      # 'hi' <= this will be printed out twice due to the loop
# end

# loop do
#   puts a      # => NameError: undefined local variable or method `a' for main:Object
#   break
# end

a = "hello"

b = [1, 2, 3].map { |num| a } # => ["hello", "hello", "hello"]

p b 
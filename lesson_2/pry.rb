require 'pry'

a = 5

loop do 
  a += 1
  binding.pry
  break if a == 8
end

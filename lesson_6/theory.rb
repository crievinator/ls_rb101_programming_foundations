require 'pry'
require 'pry-byebug'

a = 5

loop do 
  binding.pry
  a += 1
end


require 'pry'

def staggered_case(string)
  characters = string.chars
  start = 1 
  transformed_characters = characters.map.with_index do |char, index|
    if char =~ /[a-zA-Z]/
      if start.odd?
        start += 1
        char.upcase
      elsif start.even?
        start += 1
        char.downcase
      end
    else
      char  
    end
  end
  p transformed_characters.join
end

staggered_case('I Love Launch School!') 
staggered_case('ALL_CAPS')
staggered_case('ignore 77 the 444 numbers')
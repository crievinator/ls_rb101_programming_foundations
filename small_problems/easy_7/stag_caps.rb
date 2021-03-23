def staggered_case(string)
  characters = string.chars
  transformed_characters = characters.map.with_index do |char, index|
    if (index + 1).odd? && char =~ /[a-zA-Z]/
      char.upcase
    elsif (index + 1).even? && char =~ /[a-zA-Z]/
      char.downcase
    else 
      char
    end
  end
  p transformed_characters.join
end

staggered_case('I Love Launch School!') 
staggered_case('ALL_CAPS')
staggered_case('ignore 77 the 444 numbers')

def staggered_caps(string, need_upper: true)
  result = ''
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  p result
end


staggered_caps('I Love Launch School!', need_upper: false) 
staggered_caps('ALL_CAPS')
staggered_caps('ignore 77 the 444 numbers')
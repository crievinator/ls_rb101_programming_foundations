def center_of(string)
  string_length = string.length
  index = (string_length / 2) - 1

  if string_length.odd?
    string[index + 1]
  else
    substring  = ''
    substring << string[index, 2] 
  end
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
def char_upcase?(char)
  char.upcase == char
end

def uppercase?(word)
  word.chars.select { |char| char =~ /[a-zA-Z]/ }.all? { |char| char_upcase?(char)}
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
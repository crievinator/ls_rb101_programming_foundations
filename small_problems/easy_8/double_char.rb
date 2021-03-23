def consonant?(char)
  !!(char =~ /[a-z&&[^aeiou]]/i)
end

def doule_consonants(string)
  string.chars.map { |char| consonant?(char) ? char * 2 : char }.join
end

p doule_consonants('String') == "SSttrrinngg"
p doule_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p doule_consonants("July 4th") == "JJullyy 4tthh"
p doule_consonants('') == ""
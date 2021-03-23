# in a word, replace all non alphanumerical characters by space
def replace(word)
  replaced_chars = word.split("").map do |char|
    if ("a".."z").include?(char)
      char
    else 
      ' '
    end
  end
  replaced_chars.join
end

def cleanup(sentence)
  cleanedup_sentence = sentence.split(' ').map do |word|
    replace(word)
  end
  sentence_with_double_spaces = cleanedup_sentence.join(" ")
  squeeze_space(sentence_with_double_spaces)
end

def squeeze_space(string)
  chars = string.split('')
  new_chars = []

  chars.each_with_index do |char, idx|
    if idx == 0
      new_chars << char
    elsif char == " " &&  chars[idx - 1] == " "
    else 
      new_chars << char 
    end
  end
  new_chars.join
end

p cleanup("---what's my +*& line?") 

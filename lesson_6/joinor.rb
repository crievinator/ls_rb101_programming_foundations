def joinor(array, delimiter=", ", last_word="or")
  last_element = array.last.to_s
  first_part = array[0..-2].join(delimiter)
  last_word = ' ' + last_word + ' '

  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join(" #{last_word} ")
  else 
  result = first_part + last_word + last_element
  end
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
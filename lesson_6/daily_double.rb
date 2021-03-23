def crunch(string)
  result = []
  chars = string.split("")
  chars.each_with_index do |value, index|
    if index == 0
      result << value
    elsif value == chars[index - 1]
    else 
      result << value
    end
  end
  result.join
end

p crunch('ddaaiillyy ddoouubbllee')

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
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

def crunch_regex(string)
  string.split("").uniq.each do |char|
    string.gsub!(/#{char}{2,}/, char) if string =~ /#{char}{2,}/
  end 
  string
end

def crunch_sick_regex(string)
  string.gsub(/([a-z])\1+/, '\1')
end


p crunch_regex('ddaaiillyy ddoouubbllee')

p crunch_sick_regex('ddaaiillyy ddoouubbllee')
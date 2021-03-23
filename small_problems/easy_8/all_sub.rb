def palindrome?(string)
  string == string.reverse && string.length > 1
end

def palindromize(array)
  array.select { |el| palindrome?(el) }
end

def leading_substrings(string)
  string_size = string.length - 1
  result_array = Array.new

  for i in (0..string_size) do 
    result_array << string[0..i]
  end
  result_array
end

def substrings(string)
  string_size = string.length - 1
  result_array = Array.new

  for i in (0..string_size) do 
    result_array << leading_substrings(string[i..-1])
  end
  result_array.flatten
end


substrings('abcde')


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

def palindromes(string)
  palindromize(substrings(string))
end

p palindromes('madam')

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
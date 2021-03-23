def leading_substrings(string)
  string_size = string.length - 1
  result_array = Array.new

  for i in (0..string_size) do 
    result_array << string[0..i]
  end
  result_array
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']


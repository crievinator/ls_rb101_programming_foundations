def halvsies(array)
  elements = array.length
  first_half = elements - (elements / 2)
  second_half = elements / 2
  
  first_array = array[0,first_half]
  second_array = array[first_half..-1]
  result = [first_array, second_array]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
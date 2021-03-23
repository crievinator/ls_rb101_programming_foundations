require 'pry'

def reverse!(array)
  copy_array = array 
  total = array.size - 1

  array.each_with_index do |value, idx| 
    array[idx] = copy_array[total]
    binding.pry
    total -= 1
  end
end

list = [1,2,3,4]
result = reverse!(list)
p result 
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true
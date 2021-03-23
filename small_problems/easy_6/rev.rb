def reverse(array)
  new_arr = Array.new
  index = -1
  amount = array.size

  amount.times do 
    new_arr << array[index]
    index -= 1
  end
  p new_arr
end

reverse([1,2,3,4]) == [4,3,2,1]

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
def multiply_list(array1, array2)
  array1.map.with_index do |value, index|
    value * array2[index]
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


def multiply(arr1, arr2)
  arr1.zip(arr2).map {|arr| arr.reduce(:*) }
end


p multiply([3, 5, 7], [9, 10, 11]) 
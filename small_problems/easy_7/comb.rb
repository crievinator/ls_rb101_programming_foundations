def interleave(arr1, arr2)
  result_array = []
  arr1.each_with_index do |el, idx|
    result_array << el
    result_array << arr2[idx]
  end
  result_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

a = ['a', 'b', 'c']
p [1,2,3].zip(a).flatten
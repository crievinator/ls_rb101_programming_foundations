def my_method(array)
  if array.empty?
    []
  elsif array.count > 1
    array.map do |value|
      value * value
    end
  else array.count == 1
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])
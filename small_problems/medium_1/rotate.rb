require 'pry'

def rotate_array(arr)
  new_arr = arr.dup
  new_arr << new_arr.shift
end


def rotate_string(string)
  string_arr = string.chars
  string_arr << string_arr.shift
  string_arr.join
end

def rotate_int(integer)
  int_string = integer.to_s
  rotate_string(int_string).to_i
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

p rotate_string("yves")
p rotate_int(521)


def rotate_rightmost_digits(num, digits)
  num_to_string = num.to_s
  num_length = num_to_string.length
  first_elements = num_length - digits

  if first_elements.zero?
    first_part = ''
  else
  first_part = num_to_string[0..first_elements-1]
  end
  last_part = num_to_string[-digits..-1]

  rotated_last_part = rotate_string(last_part)

  result = first_part + rotated_last_part
  result.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


def max_rotation(num)
  count = num.to_s.length
  amount = count

  amount.times do 
    num = rotate_rightmost_digits(num, count)
    count -= 1
  end
  num
end


max_rotation(735291)


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
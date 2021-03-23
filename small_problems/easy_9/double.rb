def number_mirror?(number)
  digits = number.digits
  index_half_left = (digits.count / 2) - 1
  index_half_right = (digits.count / 2)
 
  digits[0..index_half_left] == digits[index_half_right..-1]
end

def double_number?(number)
  number_of_digits = number.digits.count
  if number_of_digits.even? && number_mirror?(number)
    return true
  else
    return false
  end
end


def twice(number)
  double_number?(number) ? number : number * 2
end

p twice(4444)
p twice(222)
p twice(11)
p twice(4441)
p twice(123123)

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
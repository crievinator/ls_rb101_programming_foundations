DIGITS = {0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9"}

def signed_integer_to_string(integer)
  result_string =  integer.abs.digits.reverse.map { |int| DIGITS[int]}.join
  sign = ''

  case 
  when integer.zero?
  when integer.positive? then sign = '+'
  when integer.negative? then sign = '-'
  end
  
  result_string.prepend(sign)
end


p signed_integer_to_string(4321)

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
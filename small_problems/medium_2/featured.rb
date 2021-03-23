=begin

Problem:

- input: integer from where to count
- output: integer which is a multiple of 7, is odd and has unique digits

Examples:

- extra -> when number is > 9 999 999 999 -> error

D & Algorithm:

number equals the argument
loop from number +1
  if num featured? -> return it
  if number > 999999999 -> return error
  else repeat

=end

def unique_digits(num)
  num.digits == num.digits.uniq
end


def featured?(number)
  number.odd? && number % 7 == 0 && unique_digits(number)
end


def featured(num)
  number = num
  loop do 
    number += 1
    return "error message" if number > 9_999_999_999
    break if featured?(number)
  end
  number
end

p featured(12)

p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)


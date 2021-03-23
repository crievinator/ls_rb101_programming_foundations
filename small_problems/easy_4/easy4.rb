def short_long_short(string1, string2)
 p string1.length < string2.length ?  string1 + string2 + string1 :  string2 + string1 + string2
end

short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh')
short_long_short('', 'xyz')

def century(year)
  if year % 100 == 0
    century_num = year / 100
  else  
  century_num = (year / 100) + 1
  end
end

century(2001)
century(1965)

puts ""
puts "---------"
puts "leap year"
puts "---------"
puts ""

def gregorian_leap_year?(number)
  if number % 4 == 0
    if number % 100 == 0
      if number % 400 == 0
        return true
      else 
        return false
      end 
    else 
      return true
    end
  else
    return false
  end
end

def julian_leap_year?(number)
  number % 4 == 0
end


def leap_year?(number)
  number > 1752 ? gregorian_leap_year?(number) : julian_leap_year?(number)
end

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true


def divisble_by_3_and_5?(number)
  number % 3 == 0 || number % 5 == 0 
end

def multisum(number)
  range = (1..number).to_a

  correct_numbers = range.select { |number| divisble_by_3_and_5?(number) }
  correct_numbers.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

def running_total(array)
  array.map.with_index do |num, idx|
    array[0..idx].sum
  end
end

def running(array)
  sum = 0
  array.each_with_object([]) do |value, obj|
    sum += value
    obj << sum
  end
end

p '---'

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

p '******'
p running([2, 5, 13]) 


DIGITS = {'0' => 0, '1' => 1, '2' => 2}

def convert_to_num(string)
  new_arr = string.split('').map do |char|
    DIGITS[char]
  end
  
  
end

convert_to_num('012')

p '----'

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }


  value = 0
  digits.each { |digit| value = 10 * value + digit }
  unless string[0] == '-'
    value
  else 
    value = value - (2 * value)
  end
end

p string_to_integer('-10')

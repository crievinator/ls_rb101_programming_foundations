if true
  greeting = "hello world"
end

p greeting

def is_an_ip_number?(num)
  (0..255).include?(num)
end


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

def ip_address?(input_string)
  separated_numbers = input_string.split(".")
  return false if separated_numbers.size != 4

  separated_numbers.each do |number|
    if is_an_ip_number?(number.to_i)
    else 
      return false 
    end
  end
  true
end

ip_address = '10.4.255.123'

p dot_separated_ip_address?(ip_address)
p ip_address?(ip_address)
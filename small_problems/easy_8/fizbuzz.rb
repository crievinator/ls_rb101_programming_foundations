def comma(string, element, end_element)
  unless element == end_element
    print "#{string}, "
  else 
    print "#{string}"
  end
end

def fizzbuzz(a, b)
  for i in (a..b) do 
    if i % 3 == 00 && i % 5 == 0
      comma("Fizzbuzz", i, b)
    elsif i % 3 == 0
      comma("Fizz", i, b)
    elsif i % 5 == 0
      comma("Buzz", i, b)
    else 
      comma("#{i}", i, b)
    end
  end
end

fizzbuzz(1,15)
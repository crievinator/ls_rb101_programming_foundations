def fibonacci(num)
  first_num = 1
  second_num = 1

  for i in (1..num-2) do 
    result = first_num + second_num

    first_num = second_num
    second_num = result
  end
  result
end

def last_num(num)
  num.digits.reverse.last
end

def fibonacci_last(n)
  last_num(fibonacci(n))
end

fibonacci(6)


p fibonacci(15)

p fibonacci_last(15)  
p fibonacci_last(20) 
p fibonacci_last(100) 
p fibonacci_last(100_001) 
p fibonacci_last(1_000_007)
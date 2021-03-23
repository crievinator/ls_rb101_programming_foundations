def fibonnaci(iterations)
  p first = 1
  p second = 1

  iterations.times do 
    fibo = first + second
    p fibo 
    first = second
    second = fibo 
  end
end


fibonnaci(5)



def test(a, b)
  a += "jo"
  b += 1
end

def other(a, b)
  a[0] = "k"
  b += 1
end

a = "jefke"
b = 12

test(a, b)

p a 
p b

other(a,b)

p a 
p b

p '----'

d = 'yves'

p '---'

def extend_greeting(greeting)
  greeting << " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting
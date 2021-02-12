def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)      
my_method(4,5,6,7)      

def my_method_two(a, b, c = 3, d = 4)
  p [a, b, c, d]
end

my_method_two(4, 5)   
my_method_two(4, 5, 8)   
my_method_two(4, 5, 8, 9)  


def my_method_three(a = 1, b = 3, c, d)
  p [a, b, c, d]
end
p '---'
my_method_three(4, 5)   
my_method_three(4, 5, 6)   
my_method_three(4, 5, 6, 11) 

def yves(a, b, c , d=1, e=2 , f)
  p [a, b, c, d, e, f]
end

yves(77,88,99,100)
yves(77,88,99,100, 101)


def ine(a, b, c , d=1, e=2 , f, g)
  p [a, b, c, d, e, f, g]
end

ine(77,88,99,100, 102)
ine(77,88,99,100,101, 102, 1062)
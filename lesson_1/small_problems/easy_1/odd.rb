def is_odd?(number)
  number.abs % 2 == 1
end

p is_odd?(10)
p is_odd?(5)

def is_odd_two?(number)
  number.abs.remainder(2) == 1
end

p is_odd_two?(10)
p is_odd_two?(5)
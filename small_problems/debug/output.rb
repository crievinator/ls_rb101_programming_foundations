arr = ["9", "8", "7", "10", "11"]
b = arr.sort do |x, y|
  y.to_i <=> x.to_i
end

p b 


def sequence(num)
  arr = Array.new
  for i in (1..num) do
    arr << i
  end
  arr
end

def sequence_2(num)
  (1..num).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
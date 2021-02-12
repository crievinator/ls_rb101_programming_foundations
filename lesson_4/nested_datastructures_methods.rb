a = [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].each do |element1|
  element1.map do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end

p a 

# changed first outer method to each and first inner method to map (instead of map & each)
# original code 
=begin
[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
=end



b = [[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1.5
    else                    # it's an array
      el.map do |n|
        n + 1
      end
      el << "a"
    end
  end
end

p b 
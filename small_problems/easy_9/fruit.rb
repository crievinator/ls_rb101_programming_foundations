def buy_fruit(array_of_fruits)
  result = Array.new
  array_of_fruits.each do |arr|
    arr[1].times do 
      result << arr.first
    end
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]


  def buy_fruit_2(list)
    list.map { |fruit, quantity| fruit * quantity }.flatten
  end

p buy_fruit_2([["apples", 3], ["orange", 1], ["bananas", 2]]) 

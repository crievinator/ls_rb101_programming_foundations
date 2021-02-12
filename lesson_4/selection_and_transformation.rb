produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

empty_hash = {}

def select_fruit(hsh)
  result_hash = {}
  values_from_hash = hsh.values
  keys_from_hash = hsh.keys
  counter = 0

  loop do
    if values_from_hash[counter] == "Fruit"
      result_hash[keys_from_hash[counter]] = values_from_hash[counter]
    else
    end
    break if counter == hsh.size
    counter += 1
  end
  result_hash
end

p select_fruit(produce)
p select_fruit(empty_hash)

def double_numbers!(numbers)
  counter = 0

  loop do 
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * 2

    counter += 1
  end

  numbers
end

a = [1,2]
p double_numbers!(a)
p a  
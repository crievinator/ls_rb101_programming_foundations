arr = ['10', '11', '9', '7', '8']

arr.map! { |string_num| string_num.to_i}

sorted_arr_by_num = arr.sort do |a, b|
  b <=> a
end

sorted_arr_by_num.map! { |num| num.to_s}
p sorted_arr_by_num

arr = ['10', '11', '9', '7', '8']

sorted_arr_asc = arr.sort_by { |string_num| string_num.to_i}
sorted_arr_desc = sorted_arr_asc.reverse
p sorted_arr_desc 

arr = ['10', '11', '9', '7', '8']

sorted_arr = arr.sort do |a,b|
  b.to_i <=> a.to_i
end

p sorted_arr

arr = ['10', '11', '9', '7', '8']

arr.sort

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

sorted_books = books.sort_by do |hash|
  hash[:published].to_i
end

sorted_books

other_sorted_books = books.sort do |a,b|
  b[:published] <=> a[:published]
end

other_sorted_books

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

p arr1[2][1].last
p arr1[2][1][-1]
p arr1.dig(2,1,-1)

p arr2.last[:third][0]

p arr3[2][:third].first[0]

p hsh1["b"][1]
p hsh2[:third].key(0)
p hsh2[:third].keys[0]

h = { "a" => 100, :b => 200, "c" => 300, "d" => 400 }
p h.keys 


p '---------'

arr1 = [1, [2, 3], 4]

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}


arr1[1][1] = 4
p arr1

arr2[-1] = 4
p arr2

hsh1[:first].last[0] = 4
p hsh1

p hsh2[['a']][:a][2] = 4
p hsh2

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

males = munsters.select do |key, value|
  value['gender'] == "male" 
end

p males

total_age =  males.sum do |k, value|
  value['age']
end

p total_age


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  puts "#{key} is a #{value["age"]}-year-old #{value["gender"]}"
end

a = [1, 3]
b = [2]
puts "a has value: #{a.inspect} and object_id: #{a.object_id}"
puts "b has value: #{b.inspect} and object_id: #{b.object_id}"

arr = [a, b]
puts "arr has value: #{arr.inspect} and object_id: #{arr.object_id}"

b[0] = '$'

p "after modification"

puts "a has value: #{a.inspect} and object_id: #{a.object_id}"
puts "b has value: #{b.inspect} and object_id: #{b.object_id}"
puts "arr has value: #{arr.inspect} and object_id: #{arr.object_id}"


hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |value|
  value.each do |string|
    string.split("").each do |char|
      p char if 'aeiou'.include?(char)
    end
  end
end


arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map do |subarr|
  subarr.sort do |a, b| 
    b <=> a 
  end
end

p new_arr

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hash|
  new_hash = hash.clone
  new_hash.each do |key, value|
    new_hash[key] += 1
  end
end 

p new_arr
p arr

p '----'

hash = {yves:29, ine:30}
puts "hash has value: #{hash.inspect} and object_id: #{hash.object_id}"
puts '--'
puts "first value: #{hash[:yves].inspect} and object_id: #{hash[:yves].object_id}"
puts "first key: #{hash.key(29)} and object_id: #{hash.key(29).object_id}"
puts "--"
puts "sec value: #{hash[:ine].inspect} and object_id: #{hash[:ine].object_id}"
puts "sec key: #{hash.key(30)} and object_id: #{hash.key(30).object_id}"

cloned_hash = hash.clone

puts "======================================================"
puts "Cloned has value: #{cloned_hash.inspect} and object_id: #{cloned_hash.object_id}"
puts '--'
puts "first value: #{cloned_hash[:yves].inspect} and object_id: #{cloned_hash[:yves].object_id}"
puts "first key: #{cloned_hash.key(29)} and object_id: #{cloned_hash.key(29).object_id}"
puts "--"
puts "sec value: #{cloned_hash[:ine].inspect} and object_id: #{cloned_hash[:ine].object_id}"
puts "sec key: #{cloned_hash.key(30)} and object_id: #{cloned_hash.key(30).object_id}"

cloned_hash[:yves] += 1
cloned_hash[:ine] += 1

puts "======================================================"
puts "Cloned has value: #{cloned_hash.inspect} and object_id: #{cloned_hash.object_id}"
puts '--'
puts "first value: #{cloned_hash[:yves].inspect} and object_id: #{cloned_hash[:yves].object_id}"
puts "first key: #{cloned_hash.key(29)} and object_id: #{cloned_hash.key(29).object_id}"
puts "--"
puts "sec value: #{cloned_hash[:ine].inspect} and object_id: #{cloned_hash[:ine].object_id}"
puts "sec key: #{cloned_hash.key(30)} and object_id: #{cloned_hash.key(30).object_id}"


p '!!!!!!!!!!!!!!!!!!!!!!!!!'


arr = [{a: 'a'}, {b: 'b', c: 'c'}, {d: 'd', e: 'e', f: 'f'}]

new_arr = arr.map do |hash|
  new_hash = hash.clone
  new_hash.each do |key, value|
    new_hash[key] << "!"
  end
end 

p new_arr
p arr


p 'ççççççççççç'

arr = [{a: 'a'}, {b: 'b', c: 'c'}, {d: 'd', e: 'e', f: 'f'}]

new_arr = arr.map do |hash|
  new_hash = hash.clone
  new_hash.each do |key, value|
    new_hash[key] += "!"
  end
end 

p new_arr
p arr

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

result_arr = arr.map do |subarr|
  subarr.select do |el| 
    el % 3 ==0
  end
end

p result_arr

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

new_hash = Hash.new

arr.each do |subarr|
  new_hash[subarr[0]] = subarr[1]
end

p new_hash


arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

new_arr = arr.sort_by do |subarr|
  subarr.map do |num|
    num if num.odd?
  end
end

p new_arr


hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

result_arr = []

hsh.each do |key, value|
  type = value[:type]
  case type
  when 'fruit'
    result_arr << value[:colors].map { |color| color.capitalize}
  when 'vegetable'
    result_arr << value[:size].upcase
  end
end

p result_arr


arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

result_arr = arr.select do |hsh|
  hsh.values.flatten.all? do |el|
    el.even?
  end
end

p result_arr


def uuid
  hexadecimal_chars = (1..9).to_a + ('a'..'f').to_a
  format = [8,4,4,4,12]
  uuid_arr = []

  format.each do |num|
    uuid_arr << hexadecimal_chars.sample(num).join 
  end
  
  uuid_arr.join("-")
end

p uuid
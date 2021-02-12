def reverse_words(sentence)
  splitted_reversed_words = sentence.split.map do |element|
    element.length >= 5 ? element.reverse : element
  end
  splitted_reversed_words.join(" ")
end

puts reverse_words('Walk around the block')
puts reverse_words('Professional') 
puts reverse_words('Launch School')      


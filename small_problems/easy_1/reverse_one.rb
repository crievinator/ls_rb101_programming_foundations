def reverse_sentence(sentence)
  sentence.split(" ").reverse.join(" ")
end

puts reverse_sentence('Reverse these words') == 'words these Reverse'
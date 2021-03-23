def count_chars(string)
  char_array = string.split("").select do |char|
    ("a".."z").include?(char) || ("A".."Z").include?(char)
  end
  char_array.join.length
end

def word_sizes(sentence)
  counts = Hash.new(0)
  sentence.split(" ").each do |word|
    counts[count_chars(word)] += 1
  end
  counts
end

p count_chars("seven.")

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
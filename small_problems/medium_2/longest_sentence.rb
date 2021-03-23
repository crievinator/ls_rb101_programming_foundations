def longest_sentence(file)
  text = File.read(file)
  sentences =  text.split(/(\.|\?|!)/)

  sentence_counts = sentences.map do |sentence|
    [sentence, sentence.split(' ').count]
  end

  sentence, count = sentence_counts.max_by { |sentence, count| count }
  index = sentence_counts.index { |item| item[0] == sentence }

  sentence_end = sentence_counts[index + 1][0]

  sentence += sentence_end
  sentence + count.to_s
end

p longest_sentence('text.txt')
p longest_sentence('pg84.txt')

def string_lengths(sentence)
  sentence.split.map do |element|
    element.length
  end
end

string_lengths('To be or not to be') == [2, 2, 2, 3, 2, 2]
string_lengths('Hoi daar') == [3, 4]

p '---1'

def string_lengths2(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end

p string_lengths2('To be or not to be') == [2, 2, 2, 3, 2, 2]
p string_lengths2('Hoi daar') == [3, 4]


p '---2'

def string_lengths3(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end
end

p string_lengths3('To be or not to be')
p string_lengths3('To be or not to be') == [2, 2, 2, 3, 2, 2]
p string_lengths3('Hoi daar')
p string_lengths3('Hoi daar') == [3, 4]

p '---3'

def string_lengths4(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end

  word_lengths
end


p string_lengths4('To be or not to be') == [2, 2, 2, 3, 2, 2]
p string_lengths4('Hoi daar') == [3, 4]

p '---4'

def string_lengths5(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end

p string_lengths5('To be or not to be')
p string_lengths5('To be or not to be') == [2, 2, 2, 3, 2, 2]
p string_lengths5('Hoi daar')
p string_lengths5('Hoi daar') == [3, 4]

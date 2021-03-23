def penultimate(string)
  string.split(" ")[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

def middle(sentence)
  words = sentence.split(" ")
  amount = words.count
  middle_word = words.count / 2

  if words.empty?
    ""
  else
    words[middle_word]
  end
end

a = 'hallo daar Yves'
b = "hallo daar Yves hoi"
c = ''

p middle(a)
p middle(b)
p middle(c)
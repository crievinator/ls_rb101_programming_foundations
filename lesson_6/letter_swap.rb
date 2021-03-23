def swap_first_and_last_letter(word)
  letters = word.split("")
  last_letter = letters.pop
  first_letter = letters.shift

  letters << first_letter
  letters.prepend(last_letter)
  letters.join
end

def swap(sentence)
  words = sentence.split
  words.map! do |word|
    swap_first_and_last_letter(word)
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
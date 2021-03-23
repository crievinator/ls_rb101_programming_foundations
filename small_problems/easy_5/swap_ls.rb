require 'pry'

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

def swap_first_last_characters2(a, b)
  a, b = b, a
end

def swap2(words)
  result = words.split.map do |word|
    swap_first_last_characters2(word[0], word[-1])
  end
  result.join(' ')
end



p swap2('Oh what a wonderful day it is') 
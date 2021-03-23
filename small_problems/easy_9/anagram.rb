def anagram?(string1, string2)
  string1.chars.sort == string2.chars.sort 
end


def group_anagrams(array_of_words)
  result = Hash.new([])

  array_of_words.each do |word|
    base = word.chars.sort.join
    result[base] += [word]
  end
  result.each { |_, value| p value}
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

group_anagrams(words)
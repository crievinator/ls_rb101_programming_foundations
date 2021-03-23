TRANSLATIONS = {
  "zero" => "0",
  "one" => "1",
  "two" => "2",
  "three" => "3", 
  "four" => "4", 
  "five" => "5", 
  "six" => "6", 
  "seven" => "7", 
  "eight" => "8",
  "nine" => "9"
}

def word_to_digit(sentence)
  sentence.split(/\b\b/).map do |word|
    downcased_word = word.downcase
    if TRANSLATIONS.keys.include?(downcased_word)
      TRANSLATIONS[downcased_word]
    else
      word
    end
  end.join
end

sentence = 'Please call me at One five five five one two three four. Thanks.'
p word_to_digit(sentence)

TRANSLATIONS.keys.each do |key|
  sentence.gsub!(/#{key}/, TRANSLATIONS[key])
end

p sentence


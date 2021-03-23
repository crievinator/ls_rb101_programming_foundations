=begin

Problem:

- input = string (karakters)
- output = true or false value based on the fact that the word can be formed by
spelling blocks. If 2 letters are from the same block = false. Or if no block is used twice -> true.

Examples:

- also for downcased words

Data structure & algorithm:

- create array for letter blocks (use index as a way to keep track)

- take input string and convert to characters
- check for each character which block would be used and store it in an array
- check if the arr is equal to the unique array. If it is -> true, if it's not -> false

=end


LETTER_BLOCKS = [
  ["B", "O"],
  ["X", "K"],
  ["D", "Q"],
  ["C", "P"], 
  ["N", "A"],
  ["G", "T"], 
  ["R", "E"],
  ["F", "S"], 
  ["J", "W"],
  ["H", "U"], 
  ["V", "I"],
  ["L", "Y"], 
  ["Z", "M"] 
]

def fetch_block(char)
  spelling_block = ''
  LETTER_BLOCKS.each_with_index do |letters, index|
    spelling_block = index if letters.include?(char)
  end
  spelling_block
end

def block_word?(string)
  characters = string.upcase.chars
  result_array = Array.new

  characters.each do |char|
    result_array << fetch_block(char)
  end

  result_array == result_array.uniq
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
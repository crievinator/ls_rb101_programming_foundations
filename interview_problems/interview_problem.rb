string = 'aaaabbbccafffeegg'

def group_and_count(string)
  count_of_unique_substrings = []

  characters = string.split('')
  start = 0
  characters.each_with_index do |char, i|
    if char == characters[i + 1]
    else
      count_of_unique_substrings << [char ,characters[start..i].count]
      start = i + 1
    end
  end
  count_of_unique_substrings
end

# expected output [["a", 4], ["b", 3], ["c", 2], ["a", 1], ["f", 3], ["e", 2], ["g", 2]]

p group_and_count(string)
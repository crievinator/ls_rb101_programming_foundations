=begin

Problem:

- input is a string
- output is a hash with ratio's for lowercase, uppercase & neither

Examples:

- see exercise

Data structure & Algorithm:

- first calculate the total length of the string
- count the amount of lowercase
- count the amount of uppercase
- count the other half

- final: calculate ratio's & save them in a hash

=end

def format_float(num)
  format("%0.2f", num)
end

def letter_percentages(string)
  total_characters = string.length.to_f

  lowercase = string.count("a-z")
  uppercase = string.count("A-Z")
  neither = total_characters - lowercase - uppercase

  lower_ratio = lowercase / total_characters
  upper_ratio = uppercase / total_characters
  neither_ratio = neither / total_characters

  percentage_hash = {}
  # use format_float to round
  percentage_hash[:lowercase] = format_float(lower_ratio * 100)
  # use round(2) for floats to round
  percentage_hash[:uppercase] = (upper_ratio * 100).round(2)
  percentage_hash[:neither] = (neither_ratio * 100).round(2)

  percentage_hash
end

p letter_percentages('abCdef 123')

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

p letter_percentages('abcdefGHI')
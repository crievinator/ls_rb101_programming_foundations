require 'pry'

def letter_case_count(string)
  characters = string.length
  start = 0
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  while start < characters
    ordinal = string[start].ord
    case 
    when (65..90).include?(ordinal)
      counts[:uppercase] += 1
    when (97..122).include?(ordinal)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end 
    start += 1
  end
  p counts
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
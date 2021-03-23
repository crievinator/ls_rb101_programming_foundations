=begin

Data structure & algorithm:

- split string in characters
- select only the parentheses

- loop through parentheses
  - for each ( do + 1 
  - for each ) do -1
    if ever the count is < 0 -> return false
  if the endresult is > 0 -> return false
  if the endresult = 0 -> return true

=end



def balanced?(string)
  parentheses = string.split("").select { |x| ["(", ")"].include?(x)}
  count = 0
  for parenthese in parentheses do 
    if parenthese == "("
      count += 1
    else
      count -= 1
    end
    return false if count < 0
  end
  if count > 0 
    return false
  else 
    return true
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
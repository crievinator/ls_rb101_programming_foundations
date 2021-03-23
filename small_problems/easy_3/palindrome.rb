def real_palindrome?(string)
  string.gsub!(/[^a-zA-Z0-9]/,'')
  string.downcase == string.downcase.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

def num_palin(num)
  
end
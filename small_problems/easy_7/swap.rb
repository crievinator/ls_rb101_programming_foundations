def swapcase(string)
  result_characters = string.chars.map do |char| 
    if ('a'..'z').include?(char)
      char.upcase
    elsif ('A'..'Z').include?(char)
      char.downcase
    else
      char
    end
  end
  p result_characters.join
end

swapcase('CamelCase')
swapcase('Tonight on XYZ-TV')
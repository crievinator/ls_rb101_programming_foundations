def crunch_with_regex(string)
  string.split("").uniq.each do |char|
    string.gsub!(/#{char}{2,}/, char) 
  end 
  p string
end


crunch_with_regex("yyyyvvves")
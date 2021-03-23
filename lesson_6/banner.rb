def print_in_box(string)
  string_size = string.length
  total_size = string_size + 2
  
  empty_string = " " * total_size
  banner_string = string.center(total_size, " ")
  lines = "-" * total_size

  puts "+#{lines}+"
  puts "|#{empty_string}|"
  puts "|#{banner_string}|"
  puts "|#{empty_string}|"
  puts "+#{lines}+"
end


print_in_box('To boldly go where no one has gone before.')
print_in_box('')
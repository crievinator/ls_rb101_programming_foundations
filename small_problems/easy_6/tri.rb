def triangle(n)
  range = (0..n).to_a.reverse
  
  range.each do |i| 
    line = "*" * i
    result_line = line.rjust(n)
    puts result_line
  end
end

triangle(9)
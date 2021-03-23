def multiply_all_pairs(a, b)
 p a.product(b).map {|arr| arr.reduce(:*)}.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2])
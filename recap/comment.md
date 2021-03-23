Hi everyone, 

going throught the RB101 course, I saw two different ways of using #each_with_index on a hash:

hash.each_with_index do |(a,b), index|
  puts "#{a} #{b} #{index}"
end

hash.each_with_index do |pair, index|
  puts "#{pair} #{index}"
end

Now, my question is the following -> How should one know this?
In the Enumerable module it isn't really clear that those two ways are possible. Also, there is not Hash#each_with_index method (because it's probably 'imported' via the Enumerable module). 

Is there any other section where this is explained in the ruby docs?

Thanks!
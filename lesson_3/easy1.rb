advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!(/important/,"urgent")

p advice

p 42.between?(10,100)
p (10..100).include?(42)

famous_words = "seven years ago..."
p "Four score and " << famous_words
famous_words = "seven years ago..."
p famous_words.prepend("Four score and ")

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!
p flintstones

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.select!{|k, v| k == "Barney"}

p flintstones


flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")
p flintstones
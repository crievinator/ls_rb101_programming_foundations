ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.has_key?("Spot")

munsters_description = "The Munsters are creepy in a good way."
p munsters_description.swapcase
p munsters_description.downcase.capitalize
p munsters_description.downcase
p munsters_description.upcase

munsters_description = "The Munsters are creepy in a good way."

p munsters_description.swapcase!
p munsters_description.capitalize!
p munsters_description.downcase!
p munsters_description.upcase!

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

p ages

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include?("Dino")

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.push("Dino", "Hoppy")
flintstones.concat(["Dino2", "Hoppy2"])
p flintstones

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!("Few things in life are as important as ")
p advice

statement = "The Flintstones Rock!"
p statement.count "t"

title = "Flintstone Family Members"
p title.center(40)
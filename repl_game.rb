# Instructions
puts "Welcome to WynClue "
puts "The game where you will have to discover who, killed Ed, where and how."
puts " There are three suspects: Bianca, Joe, Jose."
puts " There are three locations: classroom, garage, bathroom."
puts " There are three weapons: laptop, phone, marker."
puts "Are you ready to play, try to solve the mystery"

#generate the winning combination
murderer = 1 + rand(3).to_i
location = 1 + rand(3).to_i
weapon = 1 + rand(3).to_i

# Define the variables
murderer_array= ["","bianca" ,"joe" ,"jose"]
location_array = ["","classroom", "garage", "bathroom"]
weapon_array = ["","laptop", "phone", "marker"]
counter = 0

#Generate hash with winning combination
winner_comb = {"murderer" => "unknown", "location" => "Unknown", "weapon" => "Unknown"}
winner_comb["murderer"] = murderer_array.at(murderer)
winner_comb["location"] = location_array.at(location)
winner_comb["weapon"] = weapon_array.at(weapon)

puts winner_comb
puts "Who do you think killed Ed: Bianca, Joe, Jose"
killer = gets.chomp.downcase

until killer == winner_comb.fetch("murderer")
  counter = counter + 1
  puts ("that's not it, try again")
  killer = gets. chomp.downcase
end

puts "You are right, it was #{killer} who killed Ed"
puts "Where do you think Ed was killed: classroom, garage, bathroom"
place = gets.chomp.downcase

until place == winner_comb.fetch("location")
  counter = counter + 1
  puts "That's not it, try again"
  place = gets.chomp.downcase
end

puts "Ed was killed in the #{place}"
puts "What weapon do you think killed Ed: laptop, phone, marker"
tool = gets.chomp.downcase

until tool == winner_comb.fetch("weapon")
  counter = counter + 1
  puts "that's not it, try again"
  place = gets.chomp.downcase
end

puts "Ed was killed with a #{tool}"
puts "That's it you finally solved the mystery"
puts killer + " killed Ed at the " + place + " with a " + tool
puts "it took you #{counter} to finish the game"

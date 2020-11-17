require 'rubygems'
require 'json'

puts "Comment tu t'appelles ?"
inp = gets
puts "Et comment vas-tu"
puts inp
puts "?"
puts "Quelle recette souhaites-tu voir ?"

inp = gets.chomp

s = '{"tomate":1271,"silver":1284, "platinum": 1270}'
obj = JSON.parse(s)

<<<<<<< Updated upstream
if inp == "gold" then
  puts obj["gold"]
else
  puts "déso j'ai pas trouvé ta reçette"
=======
if inp == "tomate" then
  puts obj["tomate"]
else
  puts "désolé j'ai pas trouvé ta reçette"
>>>>>>> Stashed changes
end

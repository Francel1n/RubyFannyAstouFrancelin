puts "Comment tu t'appelles ?"
inp = gets
puts "Et comment vas-tu"
puts inp
puts "?"
puts "Quelle recette souhaites-tu voir ?"

inp = gets

require 'rubygems'
require 'json'

s = '{"gold":1271,"silver":1284, "platinum": 1270}'
obj = JSON.parse(s)

if inp == "gold" then
  puts obj["gold"]
<<<<<<< HEAD
end
if inp = "silver" then
  puts obj["silver"]
end
if inp = "platinium" then
  puts obj["platinum"]
=======
else
  puts "déso j'ai pas trouvé ta reçette"
>>>>>>> Francelin
end

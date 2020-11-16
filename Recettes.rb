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
else
  puts "déso j'ai pas trouvé ta reçette"
end

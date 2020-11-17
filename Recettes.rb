# need modules:
# gem install json
# gem install httparty

require 'httparty'
require 'rubygems'
require 'json'

# get raw json string
endpoint = "https://raw.githubusercontent.com/adatechschool/Projets/master/robot_de_conversation/recipes.json"
response = HTTParty.get(endpoint)

# parse object
recipesList = JSON.parse(response.body)

#ingredient = "Sucre"
#puts !recipesList[1]["ingredients"][ingredient].nil?

#afficher la recette demandée
puts "Quelle est la recette que vous désirez réaliser?"
recette = gets.chomp

puts " La recette choisie est #{recette}"
recipesList.each do |item|
  if item["recipe_name"] == recette
    puts item["ingredients"]
    puts item["steps"]
  end
end

#a partir des ingrédients proposer une recette

puts "Quels ingédients avez-vous?"
ingredients = gets.chomp

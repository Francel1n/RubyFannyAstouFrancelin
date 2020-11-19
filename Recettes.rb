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


#a partir des ingrédients proposer une recette
puts "Quels ingédients avez-vous?"
ingredients = gets.chomp
ingredientList = ingredients.split(",").map(&:downcase)
#on applique.map(&:downcase) pour passer notre tableau d'ingrédients en minuscules @see https://stackoverflow.com/questions/11402362/how-can-i-uppercase-each-element-of-an-array/11402608
expectedIngredients = ingredientList.length()
# on récupère la longueur du tableau

recipesList.each_with_index do |recipe, index|
  #on boucle sur chaque recette de recipesList en mettant l'index en argument afin de le récupérer par la suite
  # @see https://careerkarma.com/blog/ruby-each-with-index/
  counter = 0
  ingredientList.each do |ingredient|
    normalizedArray = recipe["ingredients"].keys.map(&:downcase)
    #on a un hash de nos ingredients ou on récupère les clés(.keys)et on le met en minuscule

    if normalizedArray.include?(ingredient) then
   #on vérifie que notre tableau inclu bien l'ingrédient
      counter = counter + 1
      #on ajoute un au compteur
      if expectedIngredients <= counter then
        #si le nombre d'ingrédients est plus petit ou égal au nombre d'ingrédients entrés
        puts "[#{index}] #{recipe["recipe_name"]}"
      end
    end

    #afficher la recette demandée
    puts "Sélectionnez la recette que vous souhaitez en mentionnant l'index([0]Gateau au chocolat: l'index est 0) "
    recetteIndex = gets.chomp
    puts " La recette choisie est #{recipesList[recetteIndex.to_i]["recipe_name"]}"
    puts recipesList[recetteIndex.to_i]["ingredients"]
    puts recipesList[recetteIndex.to_i]["steps"]
    end
  end
  if expectedIngredients <= counter then
    #si le nombre d'ingrédients est plus petit ou égal au nombre d'ingrédients entrés
    puts "[#{index}] #{recipe["recipe_name"]}"
  end


#afficher la recette demandée
puts "Sélectionnez la recette que vous souhaitez en mentionnant l'index([0]Gateau au chocolat: l'index est 0) "
recetteIndex = gets.chomp.to_i
puts " La recette choisie est #{recipesList[recetteIndex.to_i]["recipe_name"]}"
recipesList[recetteIndex]["ingredients"].each do |clef, valeur|
    puts clef + " => " + valeur
end
puts recipesList[recetteIndex.to_i]["steps"]

#recipesList.each do |item|
 # if item["recipe_name"] == recette
 #   puts item["ingredients"]
 #   puts item["steps"]
 # end
#end

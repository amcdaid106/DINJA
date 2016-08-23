# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#haricot =  Ingredient.create(name: "haricots vert")
##persil =  Ingredient.create(name: "persil")
#huile_olive =  Ingredient.create(name: "Huile d'Olive")

#salade = Recipe.new(name: "Salade d'haricots", photo: "logo.png", gluten_free: false )

#Dose.create(measure: "500g", ingredient: haricot, recipe: salade)
#Dose.create(measure: "un bouquet", ingredient: persil, recipe: salade)

# photo : soit c'est des assets, soit on la stocke sous forme d'URL - cloudinary payant ?
#Recipe.destroy_all
#Ingredient.destroy_all
#Dose.destroy_all

chickpea =  Ingredient.create(name: "chickpea")
peanut =  Ingredient.create(name: "peanut")
sesame_oil =  Ingredient.create(name: "sesame oil")
sesame_pastry =  Ingredient.create(name: "sesame pastry")
garlic =  Ingredient.create(name: "garlic")
lemon =  Ingredient.create(name: "lemons")

Houmous  = Recipe.create(name: "Houmous with peanuts", category: "starter", photo: "houmous.png", description: "Hummus is this delicious mashed chickpeas, blended with tahini, the sesame paste. Hummus is native to the Middle East countries. It is eaten raw, with raw vegetables, or with pita bread!", price:3, prep_time:6 , cooking_time:0, calories:150,
vegetarian: true, gluten_free: true, egg_free: true, dairy_free: true, vegan: true, instructions: "qrebvljhsvgzhKEBJQNVLCHIOGUYezhjkbnv, ;sc,lqzjiezemkqflnbjdfnsvd.")

chick = Dose.create(measure: "400g of", ingredient:chickpea, recipe: Houmous)
peanut = Dose.create(measure: "100g of", ingredient:peanut, recipe: Houmous)
sesame = Dose.create(measure: "dessert spoon of", ingredient: sesame_oil, recipe: Houmous)
pastry = Dose.create(measure: "10g of", ingredient: sesame_pastry, recipe: Houmous)
garlic = Dose.create(measure: "some", ingredient: garlic, recipe: Houmous)
lemon = Dose.create(measure: "2" , ingredient: lemon, recipe: Houmous)

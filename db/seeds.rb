# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
haricot =  Ingredient.create(name: "haricots verts")
persil =  Ingredient.create(name: "persil")
huile_olive =  Ingredient.create(name: "Huile d'Olive")

salade = Recipe.new(name: "Salade d'haricots", photo_file_name: "logo.png" )

Dose.create(measure: "500g", ingredient: haricot, recipe: salade)
Dose.create(measure: "un bouquet", ingredient: persil, recipe: salade)

# photo : soit c'est des assets, soit on la stocke sous forme d'URL - cloudinary payant ?

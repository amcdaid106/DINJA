
dummy_instructions = "Set the oven to 400°F. Rinse and dry the parsley and lettuce. Cut the top leaves away from the stems of the parsley and add to the work bowl of a food processor. Measure out 2 teaspoons of the cornstarch and add it to the work bowl, reserving the rest for the onion rings. Peel and slice ⅔ of the onion into thin rounds, then roughly chop the rest. Add the chopped onion to the work bowl.

Drain and rinse the beans. Add the beans, walnuts, oats, garlic powder, cumin, and 1/2 teaspoon of salt and a pinch of pepper to the food processor. Pulse until everything is incorporated but there are still visible pieces of the ingredients. Divide the mixture into 2 patties and put in the refrigerator to chill until you are ready to cook them.

Keeping the corn in the husk, place the ears on the middle rack for 15 to 20 minutes or until the husk is golden brown.Keeping the corn in the husk, place the ears on the middle rack for 15 to 20 minutes or until the husk is golden brown."


chickpea =  Ingredient.create(name: "chickpea")
peanut =  Ingredient.create(name: "peanut")
sesame_oil =  Ingredient.create(name: "sesame oil")
sesame_pastry =  Ingredient.create(name: "sesame pastry")
garlic =  Ingredient.create(name: "garlic")
lemon =  Ingredient.create(name: "lemons")

Houmous  = Recipe.create(name: "Houmous with peanuts", category: "starter", photo: "houmous.png", description: "Hummus is this delicious mashed chickpeas, blended with tahini, the sesame paste. Hummus is native to the Middle East countries. It is eaten raw, with raw vegetables, or with pita bread!", price:3, prep_time:6 , cooking_time:0, calories:150,
vegetarian: true, gluten_free: true, egg_free: true, dairy_free: true, vegan: true, instructions: dummy_instructions)

chick = Dose.create(measure: "400g of", ingredient:chickpea, recipe: Houmous)
peanut = Dose.create(measure: "100g of", ingredient:peanut, recipe: Houmous)
sesame = Dose.create(measure: "dessert spoon of", ingredient: sesame_oil, recipe: Houmous)
pastry = Dose.create(measure: "10g of", ingredient: sesame_pastry, recipe: Houmous)
garlic = Dose.create(measure: "some", ingredient: garlic, recipe: Houmous)
lemon = Dose.create(measure: "2" , ingredient: lemon, recipe: Houmous)


bean_burger = Recipe.create(name: "Bean Burger", description: "Better bean burger with spiced ketchup and onions", price: 9, photo: "bean_burger.png", instructions: dummy_instructions, prep_time: 15, cooking_time: 20, category: "Main course", calories: 907, gluten_free: false, dairy_free: true, egg_free: true, vegetarian: true, vegan: true)

parsley = Ingredient.create(name: "Fresh parsley")
Dose.create(measure: "a bunch", recipe_id: bean_burger, ingredient_id: parsley)
romaine = Ingredient.create(name: "Romaine lettuce")
Dose.create(measure: "2 leaves", recipe_id: bean_burger, ingredient_id: romaine)
onion = Ingredient.create(name: "Onion")
Dose.create(measure: "1", recipe_id: bean_burger, ingredient_id: onion)
kidney_beans = Ingredient.create(name: "Kidney beans")
Dose.create(measure: "1 package", recipe_id: bean_burger, ingredient_id: kidney_beans)
ketchup = Ingredient.create(name: "Ketchup")
Dose.create(measure: "3 tablespoons", recipe_id: bean_burger, ingredient_id: ketchup)
corn = Ingredient.create(name: "corn")
Dose.create(measure: "2 ears", recipe_id: bean_burger, ingredient_id: corn)


rice_risotto = Recipe.create(name: "Lemon Rice Risotto", description: "Meyer lemon forbidden rice risotto with sweet peas", price: 8, photo: "rice_risotto.png", instructions: dummy_instructions, prep_time: 30, cooking_time: 10, category: "Main course", calories: 433, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: true, vegan: true)

shallot = Ingredient.create(name: "Shallot")
Dose.create(measure: "1", recipe_id: rice_risotto, ingredient_id: shallot)
rice = Ingredient.create(name: "Rice")
Dose.create(measure: "1 cup", recipe_id: rice_risotto, ingredient_id: rice)
mustard = Ingredient.create(name: "Dijon mustard")
Dose.create(measure: "1 teaspoon", recipe_id: rice_risotto, ingredient_id: mustard)
peas = Ingredient.create(name: "Peas")
Dose.create(measure: "⅓ cup", recipe_id: rice_risotto, ingredient_id: peas)
vegetable_oil = Ingredient.create(name: "Vegetable oil")
Dose.create(measure: "3 tablespoons", recipe_id: rice_risotto, ingredient_id: vegetable_oil)
lemon = Ingredient.create(name: "lemon")
Dose.create(measure: "1", recipe_id: rice_risotto, ingredient_id: lemon)


asado_negro = Recipe.create(name: "Venezuelan Asado Negro", description: "Venezuelan asado negro with roasted vegetables and tostones", price: 10, photo: "asado_negro.jpg", instructions: dummy_instructions, prep_time: 20, cooking_time: 15, category: "Main course", calories: 527, gluten_free: true, dairy_free: false, egg_free: true, vegetarian: false, vegan: false)

garlic = Ingredient.create(name: "Garlic")
Dose.create(measure: "2 cloves", recipe_id: asado_negro, ingredient_id: shallot)
courgette = Ingredient.create(name: "Courgette")
Dose.create(measure: "2", recipe_id: asado_negro, ingredient_id: courgette)
steak = Ingredient.create(name: "Flat Iron Steaks")
Dose.create(measure: "2", recipe_id: asado_negro, ingredient_id: steak)
oregano = Ingredient.create(name: "Dried Oregano")
Dose.create(measure: "½ tsp", recipe_id: asado_negro, ingredient_id: oregano)
wine = Ingredient.create(name: "Cooking wine")
Dose.create(measure: "3 fluid oz", recipe_id: asado_negro, ingredient_id: wine)
butter = Ingredient.create(name: "Butter")
Dose.create(measure: "⅗ oz", recipe_id: asado_negro, ingredient_id: butter)


tofu_pad_thai = Recipe.create(name: "Tofu Pad Thai", description: "Tofu Pad Thai with carrots and sweet chili sauce", price: 10, photo: "tofu_pad_thai.jpg", instructions: dummy_instructions, prep_time: 25, cooking_time: 10, category: "Main course", calories: 837, gluten_free: true, dairy_free: true, egg_free: false, vegetarian: true, vegan: true)

tofu = Ingredient.create(name: "Extra Firm Tofu")
Dose.create(measure: "2 cloves", recipe_id: tofu_pad_thai, ingredient_id: tofu)
green_onion = Ingredient.create(name: "Green Onion")
Dose.create(measure: "2", recipe_id: tofu_pad_thai, ingredient_id: green_onion)
lime = Ingredient.create(name: "Lime")
Dose.create(measure: "1", recipe_id: tofu_pad_thai, ingredient_id: lime)
peanuts = Ingredient.create(name: "Roasted Peanuts")
Dose.create(measure: "¾ oz", recipe_id: tofu_pad_thai, ingredient_id: peanuts)
chili_sauce = Ingredient.create(name: "Sweet Chili Sauce")
Dose.create(measure: "6 fluid oz", recipe_id: tofu_pad_thai, ingredient_id: chili_sauce)
carrots = Ingredient.create(name: "Carrots")
Dose.create(measure: "4 oz", recipe_id: tofu_pad_thai, ingredient_id: carrots)


tuscan_chicken = Recipe.create(name: "Tuscan Chicken", description: "Tuscan Chicken with rainbow vegetable skewers", price: 10, photo: "tuscan_chicken.jpg", instructions: dummy_instructions, prep_time: 25, cooking_time: 0, category: "Main course", calories: 406, gluten_free: true, dairy_free: true, egg_free: false, vegetarian: false, vegan: false)

# garlic
Dose.create(measure: "2 cloves", recipe_id: tuscan_chicken, ingredient_id: garlic)
chicken = Ingredient.create(name: "Skinless Chicken")
Dose.create(measure: "2 breasts", recipe_id: tuscan_chicken, ingredient_id: chicken)
red_onion = Ingredient.create(name: "Red onion")
Dose.create(measure: "1", recipe_id: tuscan_chicken, ingredient_id: red_onion)
red_bell_pepper = Ingredient.create(name: "Red Bell Pepper")
Dose.create(measure: "1", recipe_id: tuscan_chicken, ingredient_id: red_bell_pepper)
# courgette
Dose.create(measure: "1", recipe_id: tuscan_chicken, ingredient_id: courgette)
orange_bell_pepper = Ingredient.create(name: "Orange Bell Pepper")
Dose.create(measure: "1", recipe_id: tuscan_chicken, ingredient_id: orange_bell_pepper)



stuffed_mushrooms = Recipe.create(name: "Stuffed Mushrooms", description: "Mouth-Watering Stuffed Mushrooms", price: 8, photo: "stuffed_mushrooms.jpg", instructions: dummy_instructions, prep_time: 25, cooking_time: 20, category: "Starter", calories: 250, gluten_free: false, dairy_free: false, egg_free: true, vegetarian: true, vegan: false)

# garlic
Dose.create(measure: "1 tablespoon minced", recipe_id: stuffed_mushrooms, ingredient_id: garlic)
# vegetable_oil
Dose.create(measure: "1 tablespoon", recipe_id: stuffed_mushrooms, ingredient_id: vegetable_oil)
cream_cheese = Ingredient.create(name: "Cream cheese")
Dose.create(measure: "1 package", recipe_id: stuffed_mushrooms, ingredient_id: cream_cheese)
mushrooms = Ingredient.create(name: "Whole fresh mushrooms")
Dose.create(measure: "12", recipe_id: stuffed_mushrooms, ingredient_id: mushrooms)
parmesan_cheese = Ingredient.create(name: "Parmesan Cheese")
Dose.create(measure: "¼ cup", recipe_id: stuffed_mushrooms, ingredient_id: parmesan_cheese)
cayenne_pepper = Ingredient.create(name: "Cayenne pepper")
Dose.create(measure: "¼ teaspoon", recipe_id: stuffed_mushrooms, ingredient_id: cayenne_pepper)



buffalo_chicken_dip = Recipe.create(name: "Baked Buffalo Chicken Dip", description: "Baked buffalo rotisserie chicken dip, great for parties", price: 9, photo: "buffalo_chicken_dip.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 10, category: "Starter", calories: 500, gluten_free: true, dairy_free: false, egg_free: true, vegetarian: false, vegan: false)

# chicken
Dose.create(measure: "3 cups diced", recipe_id: buffalo_chicken_dip, ingredient_id: chicken)
# cream_cheese
Dose.create(measure: "2 packages", recipe_id: buffalo_chicken_dip, ingredient_id: cream_cheese)
hot_pepper_sauce = Ingredient.create(name: "Frank’s RedHot Sauce")
Dose.create(measure: "¾ cup", recipe_id: buffalo_chicken_dip, ingredient_id: hot_pepper_sauce)
pepper_jack_cheese = Ingredient.create(name: "Pepper Jack Cheese")
Dose.create(measure: "½ cup", recipe_id: buffalo_chicken_dip, ingredient_id: pepper_jack_cheese)
blue_cheese_dressing = Ingredient.create(name: "Blue Cheese Dressing")
Dose.create(measure: "½ cup", recipe_id: buffalo_chicken_dip, ingredient_id: blue_cheese_dressing)
# cayenne_pepper
Dose.create(measure: "1 pinch", recipe_id: buffalo_chicken_dip, ingredient_id: cayenne_pepper)



artichoke_hearts_gratin = Recipe.create(name: "Artichoke Hearts Gratin", description: "Tasty all-veggie appetizer", price: 10, photo: "artichoke_gratin.jpg", instructions: dummy_instructions, prep_time: 15, cooking_time: 15, category: "Starter", calories: 460, gluten_free: false, dairy_free: false, egg_free: true, vegetarian: true, vegan: false)

artichoke_hearts = Ingredient.create(name: "Artichoke Hearts")
Dose.create(measure: "6", recipe_id: artichoke_hearts_gratin, ingredient_id: artichoke_hearts)
# vegatable_oil
Dose.create(measure: "1 teaspoon", recipe_id: artichoke_hearts_gratin, ingredient_id: vegetable_oil)
bread_crumbs = Ingredient.create(name: "Bread crumbs")
Dose.create(measure: "2 tablespoons", recipe_id: artichoke_hearts_gratin, ingredient_id: bread_crumbs)
olive_oil = Ingredient.create(name: "Olive oil")
Dose.create(measure: "1 tablespoon", recipe_id: artichoke_hearts_gratin, ingredient_id: olive_oil)
# lemon
Dose.create(measure: "½ in wedges", recipe_id: artichoke_hearts_gratin, ingredient_id: lemon)
salt = Ingredient.create(name: "Salt")
Dose.create(measure: "1 pinch", recipe_id: artichoke_hearts_gratin, ingredient_id: salt)



mocha_bundt_cake = Recipe.create(name: "Mexican Mocha Bundt Cake", description: "Delicious choclatey crowd-pleaser", price: 6, photo: "mocha_cake.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 460, gluten_free: false, dairy_free: false, egg_free: false, vegetarian: true, vegan: false)

vanilla_pudding_mix = Ingredient.create(name: "Vanilla Pudding Mix")
Dose.create(measure: "1 package", recipe_id: mocha_bundt_cake, ingredient_id: vanilla_pudding_mix)
milk = Ingredient.create(name: "Milk")
Dose.create(measure: "1 cup", recipe_id: mocha_bundt_cake, ingredient_id: milk)
# vegetable_oil
Dose.create(measure: "½ cup", recipe_id: mocha_bundt_cake, ingredient_id: vegetable_oil)
chocolate_cake_mix = Ingredient.create(name: "Chocolate cake mix")
Dose.create(measure: "1 package", recipe_id: mocha_bundt_cake, ingredient_id: chocolate_cake_mix)
egg = Ingredient.create(name: "Egg")
Dose.create(measure: "4", recipe_id: mocha_bundt_cake, ingredient_id: egg)
cinnamon = Ingredient.create(name: "Cinnamon")
Dose.create(measure: "1 tablespoon", recipe_id: mocha_bundt_cake, ingredient_id: cinnamon)



courgette_brownies = Recipe.create(name: "Whole-Wheat Chocolate Courgette Brownies", description: "Moist, chocolatey, delicious, double-chocolate brownies", price: 8, photo: "courgette_brownies.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 420, gluten_free: false, dairy_free: true, egg_free: false, vegetarian: true, vegan: false)

whole_wheat_flour = Ingredient.create(name: "Whole Wheat Flour")
Dose.create(measure: "1 cup", recipe_id: courgette_brownies, ingredient_id: whole_wheat_flour)
cocoa = Ingredient.create(name: "Cocoa")
Dose.create(measure: "⅓ cup", recipe_id: courgette_brownies, ingredient_id: cocoa)
# vegetable_oil
Dose.create(measure: "¼ cup", recipe_id: courgette_brownies, ingredient_id: vegetable_oil)
sugar = Ingredient.create(name: "Sugar")
Dose.create(measure: "½ cup", recipe_id: courgette_brownies, ingredient_id: sugar)
egg = Ingredient.create(name: "Egg")
Dose.create(measure: "2 large", recipe_id: courgette_brownies, ingredient_id: egg)
# courgette
Dose.create(measure: "1.5 cups", recipe_id: courgette_brownies, ingredient_id: courgette)


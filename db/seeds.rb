
OrderItem.destroy_all
Order.destroy_all
Dose.destroy_all
# Ingredient.destroy_all # DO NOT DESTROY ALL OF THEM, WE USE THE ONES SCRAPED
Recipe.destroy_all


dummy_instructions = "Set the oven to 400°F. Rinse and dry the parsley and lettuce. Cut the top leaves away from the stems of the parsley and add to the work bowl of a food processor. Measure out 2 teaspoons of the corntarch and add it to the work bowl, reserving the rest for the onion rings. Peel and slice ⅔ of the onion into thin rounds, then roughly chop the rest. Add the chopped onion to the work bowl.

Drain and rinse the beans. Add the beans, walnuts, oats, garlic powder, cumin, and 1/2 teaspoon of salt and a pinch of pepper to the food processor. Pulse until everything is incorporated but there are still visible pieces of the ingredients. Divide the mixture into 2 patties and put in the refrigerator to chill until you are ready to cook them.

Keeping the corn in the husk, place the ears on the middle rack for 15 to 20 minutes or until the husk is golden brown.Keeping the corn in the husk, place the ears on the middle rack for 15 to 20 minutes or until the husk is golden brown."

artichoke_hearts = Ingredient.where(name: "Artichoke Hearts").first_or_create!
bacon =  Ingredient.where(name: "Bacon").first_or_create!
beans =  Ingredient.where(name: "Black beans").first_or_create!
beef =  Ingredient.where(name: "Beef").first_or_create!
blue_cheese_dressing = Ingredient.where(name: "Blue Cheese Dressing").first_or_create!
bread_crumbs = Ingredient.where(name: "Breadcrumbs").first_or_create!
butter = Ingredient.where(name: "Butter").first_or_create!
carrot = Ingredient.where(name: "Carrot").first_or_create!
cayenne = Ingredient.where(name: "Cayenne").first_or_create!
chicken = Ingredient.where(name: "Skinned chicken").first_or_create!
chickpeas =  Ingredient.where(name: "chickpeas").first_or_create!
chili_sauce = Ingredient.where(name: "Sweet Chili Sauce").first_or_create!
chocolate_cake_mix = Ingredient.where(name: "Chocolate cake mix").first_or_create!
cinnamon = Ingredient.where(name: "Cinnamon").first_or_create!
cocoa = Ingredient.where(name: "Cocoa").first_or_create!
coley =  Ingredient.where(name: "coley").first_or_create!
corn = Ingredient.where(name: "Corn").first_or_create!
cottage_cheese =  Ingredient.where(name: "Cottage cheese").first_or_create!
courgette = Ingredient.where(name: "Courgette").first_or_create!
cream_cheese = Ingredient.where(name: "Cream cheese").first_or_create!
custard_cream= Ingredient.where(name: "custard cream").first_or_create!
dark_chocolate =  Ingredient.where(name: "dark chocolate").first_or_create!
egg = Ingredient.where(name: "Egg").first_or_create!
garlic =  Ingredient.where(name: "Garlic").first_or_create!
ginger =  Ingredient.where(name: "Ginger").first_or_create!
green_onion = Ingredient.where(name: "Green Onion").first_or_create!
ham =  Ingredient.where(name: "Ham").first_or_create!
honey =  Ingredient.where(name:"Honey").first_or_create!
hot_pepper_sauce = Ingredient.where(name: "Frank’s RedHot Sauce").first_or_create!
ketchup = Ingredient.where(name: "Ketchup").first_or_create!
kidney_beans = Ingredient.where(name: "Kidney beans").first_or_create!
lemon = Ingredient.where(name: "Lemon").first_or_create!
lime = Ingredient.where(name: "Lime").first_or_create!
lime_juice =  Ingredient.where(name: "lime juice").first_or_create!
mashed_potatoes =  Ingredient.where(name: "mashed_potatoes").first_or_create!
melon =  Ingredient.where(name: "melon").first_or_create!
milk = Ingredient.where(name: "Milk").first_or_create!
mozzarella =  Ingredient.where(name: "Mozzarella cheese").first_or_create!
mushrooms = Ingredient.where(name: "Whole fresh mushrooms").first_or_create!
mustard = Ingredient.where(name: "Dijon mustard").first_or_create!
olive_oil = Ingredient.where(name: "Olive oil").first_or_create!
onion = Ingredient.where(name: "Onion").first_or_create!
orange_bell_pepper = Ingredient.where(name: "Bell pepper").first_or_create!
oregano = Ingredient.where(name: "Dried Oregano").first_or_create!
parmesan_cheese = Ingredient.where(name: "Parmesan cheese").first_or_create!
parsley = Ingredient.where(name: "Parsley").first_or_create!
pasta =  Ingredient.where(name: "Pasta").first_or_create!
peanuts =  Ingredient.where(name: "Peanuts").first_or_create!
peas = Ingredient.where(name: "Peas").first_or_create!
pepper_jack_cheese = Ingredient.where(name: "Pepper Jack Cheese").first_or_create!
peppers =  Ingredient.where(name: "peppers").first_or_create!
pesto =  Ingredient.where(name: "pesto").first_or_create!
potatoes =  Ingredient.where(name: "Potatoes").first_or_create!
red_bell_pepper = Ingredient.where(name: "Bell pepper").first_or_create!
red_onion = Ingredient.where(name: "Red onion").first_or_create!
rice = Ingredient.where(name: "Rice").first_or_create!
rocket = Ingredient.where(name: "Rocket leaves").first_or_create!
romaine = Ingredient.where(name: "Romaine lettuce").first_or_create!
salt = Ingredient.where(name: "Salt").first_or_create!
sesame_oil =  Ingredient.where(name: "Sesame oil").first_or_create!
sesame_pastry =  Ingredient.where(name: "sesame pastry").first_or_create!
shallots = Ingredient.where(name: "Shallots").first_or_create!
steak = Ingredient.where(name: "Flat Iron Steaks").first_or_create!
strawberries =  Ingredient.where(name: "Strawberry").first_or_create!
sugar = Ingredient.where(name: "Sugar").first_or_create!
thyme=  Ingredient.where(name: "Thyme").first_or_create!
tofu = Ingredient.where(name: "Tofu").first_or_create!
tomatoes =  Ingredient.where(name: "Tomato").first_or_create!
vanilla=  Ingredient.where(name: "vanilla").first_or_create!
vanilla_pudding_mix = Ingredient.where(name: "Vanilla Pudding Mix").first_or_create!
vegetable_oil = Ingredient.where(name: "Vegetable oil").first_or_create!
vinegar =  Ingredient.where(name: "Vinegar").first_or_create!
walnut_shortbread=  Ingredient.where(name: "walnut shortbread").first_or_create!
water = Ingredient.where(name: "water").first_or_create!
whole_wheat_flour = Ingredient.where(name: "Whole wheat flour").first_or_create!
wine = Ingredient.where(name: "Red wine").first_or_create!



houmous = Recipe.create(name: "Houmous with peanuts", category: "starter", photo: "houmous.png", description: "Hummus is this delicious mashed chickpeas, blended with tahini, the sesame paste. Hummus is native to the Middle East countries. It is eaten raw, with raw vegetables, or with pita bread!", price:3, prep_time:6 , cooking_time:0, calories:150,

vegetarian: true, gluten_free: true, egg_free: true, dairy_free: true, vegan: true, instructions: dummy_instructions)

Dose.create(measure: "400g of", ingredient:chickpeas, recipe: houmous)
Dose.create(measure: "100g of", ingredient:peanuts, recipe: houmous)
Dose.create(measure: "dessert spoon of", ingredient: sesame_oil, recipe: houmous)
Dose.create(measure: "10g of", ingredient: sesame_pastry, recipe: houmous)
Dose.create(measure: "some", ingredient: garlic, recipe: houmous)
Dose.create(measure: "2" , ingredient: lemon, recipe: houmous)


bean_burger = Recipe.create(name: "Bean Burger", description: "Better bean burger with spiced ketchup and onions", price: 9, photo: "bean_burger.png", instructions: dummy_instructions, prep_time: 15, cooking_time: 20, category: "Main course", calories: 907, gluten_free: false, dairy_free: true, egg_free: true, vegetarian: true, vegan: true)

Dose.create(measure: "a bunch", recipe: bean_burger, ingredient: parsley)
Dose.create(measure: "2 leaves", recipe: bean_burger, ingredient: romaine)
Dose.create(measure: "1", recipe: bean_burger, ingredient: onion)
Dose.create(measure: "1 package", recipe: bean_burger, ingredient: kidney_beans)
Dose.create(measure: "3 tablespoons", recipe: bean_burger, ingredient: ketchup)
Dose.create(measure: "2 ears", recipe: bean_burger, ingredient: corn)


rice_risotto = Recipe.create(name: "Lemon Rice Risotto", description: "Meyer lemon forbidden rice risotto with sweet peas", price: 8, photo: "rice_risotto.png", instructions: dummy_instructions, prep_time: 30, cooking_time: 10, category: "Main course", calories: 433, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: true, vegan: true)

Dose.create(measure: "1", recipe: rice_risotto, ingredient: shallots)
Dose.create(measure: "1 cup", recipe: rice_risotto, ingredient: rice)
Dose.create(measure: "1 teaspoon", recipe: rice_risotto, ingredient: mustard)
Dose.create(measure: "⅓ cup", recipe: rice_risotto, ingredient: peas)
Dose.create(measure: "3 tablespoons", recipe: rice_risotto, ingredient: vegetable_oil)
Dose.create(measure: "1", recipe: rice_risotto, ingredient: lemon)


asado_negro = Recipe.create(name: "Venezuelan Asado Negro", description: "Venezuelan asado negro with roasted vegetables and tostones", price: 10, photo: "asado_negro.jpg", instructions: dummy_instructions, prep_time: 20, cooking_time: 15, category: "Main course", calories: 527, gluten_free: true, dairy_free: false, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "2 cloves", recipe: asado_negro, ingredient: shallots)
Dose.create(measure: "2", recipe: asado_negro, ingredient: courgette)
Dose.create(measure: "2", recipe: asado_negro, ingredient: steak)
Dose.create(measure: "½ tsp", recipe: asado_negro, ingredient: oregano)
Dose.create(measure: "3 fluid oz", recipe: asado_negro, ingredient: wine)
Dose.create(measure: "⅗ oz", recipe: asado_negro, ingredient: butter)


tofu_pad_thai = Recipe.create(name: "Tofu Pad Thai", description: "Tofu Pad Thai with carrots and sweet chili sauce", price: 10, photo: "tofu_pad_thai.jpg", instructions: dummy_instructions, prep_time: 25, cooking_time: 10, category: "Main course", calories: 837, gluten_free: true, dairy_free: true, egg_free: false, vegetarian: true, vegan: true)

Dose.create(measure: "2 cloves", recipe: tofu_pad_thai, ingredient: tofu)
Dose.create(measure: "2", recipe: tofu_pad_thai, ingredient: green_onion)
Dose.create(measure: "1", recipe: tofu_pad_thai, ingredient: lime)
Dose.create(measure: "¾ oz", recipe: tofu_pad_thai, ingredient: peanuts)
Dose.create(measure: "6 fluid oz", recipe: tofu_pad_thai, ingredient: chili_sauce)
Dose.create(measure: "4 oz", recipe: tofu_pad_thai, ingredient: carrot)


tuscan_chicken = Recipe.create(name: "Tuscan Chicken", description: "Tuscan Chicken with rainbow vegetable skewers", price: 10, photo: "tuscan_chicken.jpg", instructions: dummy_instructions, prep_time: 25, cooking_time: 0, category: "Main course", calories: 406, gluten_free: true, dairy_free: true, egg_free: false, vegetarian: false, vegan: false)

# garlic
Dose.create(measure: "2 cloves", recipe: tuscan_chicken, ingredient: garlic)
Dose.create(measure: "2 breasts", recipe: tuscan_chicken, ingredient: chicken)
Dose.create(measure: "1", recipe: tuscan_chicken, ingredient: red_onion)
Dose.create(measure: "1", recipe: tuscan_chicken, ingredient: red_bell_pepper)
# courgette
Dose.create(measure: "1", recipe: tuscan_chicken, ingredient: courgette)
Dose.create(measure: "1", recipe: tuscan_chicken, ingredient: orange_bell_pepper)

stuffed_mushrooms = Recipe.create(name: "Stuffed Mushrooms", description: "Mouth-Watering Stuffed Mushrooms", price: 8, photo: "stuffed_mushrooms.jpg", instructions: dummy_instructions, prep_time: 25, cooking_time: 20, category: "Starter", calories: 250, gluten_free: false, dairy_free: false, egg_free: true, vegetarian: true, vegan: false)

# garlic
Dose.create(measure: "1 tablespoon minced", recipe: stuffed_mushrooms, ingredient: garlic)
# vegetable_oil
Dose.create(measure: "1 tablespoon", recipe: stuffed_mushrooms, ingredient: vegetable_oil)
Dose.create(measure: "1 package", recipe: stuffed_mushrooms, ingredient: cream_cheese)
Dose.create(measure: "12", recipe: stuffed_mushrooms, ingredient: mushrooms)
Dose.create(measure: "¼ cup", recipe: stuffed_mushrooms, ingredient: parmesan_cheese)
Dose.create(measure: "¼ teaspoon", recipe: stuffed_mushrooms, ingredient: cayenne)

buffalo_chicken_dip = Recipe.create(name: "Baked Buffalo Chicken Dip", description: "Baked buffalo rotisserie chicken dip, great for parties", price: 9, photo: "buffalo_chicken_dip.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 10, category: "Starter", calories: 500, gluten_free: true, dairy_free: false, egg_free: true, vegetarian: false, vegan: false)

# chicken
Dose.create(measure: "3 cups diced", recipe: buffalo_chicken_dip, ingredient: chicken)
# cream_cheese
Dose.create(measure: "2 packages", recipe: buffalo_chicken_dip, ingredient: cream_cheese)
Dose.create(measure: "¾ cup", recipe: buffalo_chicken_dip, ingredient: hot_pepper_sauce)
Dose.create(measure: "½ cup", recipe: buffalo_chicken_dip, ingredient: pepper_jack_cheese)
Dose.create(measure: "½ cup", recipe: buffalo_chicken_dip, ingredient: blue_cheese_dressing)
# cayenne
Dose.create(measure: "1 pinch", recipe: buffalo_chicken_dip, ingredient: cayenne)

artichoke_hearts_gratin = Recipe.create(name: "Artichoke Hearts Gratin", description: "Tasty all-veggie appetizer", price: 10, photo: "artichoke_gratin.jpg", instructions: dummy_instructions, prep_time: 15, cooking_time: 15, category: "Starter", calories: 460, gluten_free: false, dairy_free: false, egg_free: true, vegetarian: true, vegan: false)

Dose.create(measure: "6", recipe: artichoke_hearts_gratin, ingredient: artichoke_hearts)
# vegatable_oil
Dose.create(measure: "1 teaspoon", recipe: artichoke_hearts_gratin, ingredient: vegetable_oil)
Dose.create(measure: "2 tablespoons", recipe: artichoke_hearts_gratin, ingredient: bread_crumbs)
Dose.create(measure: "1 tablespoon", recipe: artichoke_hearts_gratin, ingredient: olive_oil)
# lemon
Dose.create(measure: "½ in wedges", recipe: artichoke_hearts_gratin, ingredient: lemon)
Dose.create(measure: "1 pinch", recipe: artichoke_hearts_gratin, ingredient: salt)

mocha_bundt_cake = Recipe.create(name: "Mexican Mocha Bundt Cake", description: "Delicious choclatey crowd-pleaser", price: 6, photo: "mocha_cake.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 460, gluten_free: false, dairy_free: false, egg_free: false, vegetarian: true, vegan: false)

Dose.create(measure: "1 package", recipe: mocha_bundt_cake, ingredient: vanilla_pudding_mix)
Dose.create(measure: "1 cup", recipe: mocha_bundt_cake, ingredient: milk)
# vegetable_oil
Dose.create(measure: "½ cup", recipe: mocha_bundt_cake, ingredient: vegetable_oil)
Dose.create(measure: "1 package", recipe: mocha_bundt_cake, ingredient: chocolate_cake_mix)
Dose.create(measure: "4", recipe: mocha_bundt_cake, ingredient: egg)
Dose.create(measure: "1 tablespoon", recipe: mocha_bundt_cake, ingredient: cinnamon)

courgette_brownies = Recipe.create(name: "Whole-Wheat Chocolate Courgette Brownies", description: "Moist, chocolatey, delicious, double-chocolate brownies", price: 8, photo: "courgette_brownies.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 420, gluten_free: false, dairy_free: true, egg_free: false, vegetarian: true, vegan: false)

Dose.create(measure: "1 cup", recipe: courgette_brownies, ingredient: whole_wheat_flour)
Dose.create(measure: "⅓ cup", recipe: courgette_brownies, ingredient: cocoa)
# vegetable_oil
Dose.create(measure: "¼ cup", recipe: courgette_brownies, ingredient: vegetable_oil)
Dose.create(measure: "½ cup", recipe: courgette_brownies, ingredient: sugar)
Dose.create(measure: "2 large", recipe: courgette_brownies, ingredient: egg)
# courgette
Dose.create(measure: "1.5 cups", recipe: courgette_brownies, ingredient: courgette)

italian_salad = Recipe.new(name: "Italian salad with pesto", description: "The perfect italian taste", price: 6, photo: "italian_salad.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Starter", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "1/4" , ingredient: melon, recipe: italian_salad)
Dose.create(measure: "2", ingredient: mozzarella, recipe: italian_salad)
Dose.create(measure:  "100g", ingredient: rocket, recipe: italian_salad)
Dose.create(measure:  "4 tablespoons", ingredient: pesto, recipe: italian_salad)

gazpacho = Recipe.new(name: "Gazpacho of red peppers and tomatoes", description: "Richful mix of vegetables", price: 12, photo: "gazpacho.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Starter", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "5", ingredient: tomatoes, recipe: gazpacho)
Dose.create(measure: "3", ingredient: peppers, recipe: gazpacho)
Dose.create(measure: "2", ingredient: onion, recipe: gazpacho)

mexican_salad = Recipe.new(name: "Mexican salad with beans", description: "The right salad at the right place", price:10, photo: "mexican_salad.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Starter", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "1 can", ingredient: beans, recipe: mexican_salad)
Dose.create(measure: "1 can", ingredient: corn, recipe: mexican_salad)
Dose.create(measure: "2", ingredient: onion, recipe: mexican_salad)
Dose.create(measure: "1/2 cup", ingredient: vinegar, recipe: mexican_salad)
Dose.create(measure: "2 tablespoons", ingredient: lime_juice, recipe: mexican_salad)

pasta_carbonara = Recipe.new(name: "Pasta carbonara with thyme", description: "Get the meal rolling with your friends", price: 15, photo: "pasta_carbonara.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Main course", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)
Dose.create(measure: "250g", ingredient: pasta, recipe: pasta_carbonara)
Dose.create(measure: "2 pieces", ingredient: bacon, recipe: pasta_carbonara)
Dose.create(measure:  "1 tablespoon", ingredient: thyme, recipe: pasta_carbonara)
Dose.create(measure: "1 pinch", ingredient: salt, recipe: pasta_carbonara)

coley_parmesan = Recipe.new(name: "Coley with potatoes and parmesan cream", description: "For fish lovers, give it a try", price: 20, photo: "coley_parmesan.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Main course", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "1", ingredient: coley, recipe: coley_parmesan)
Dose.create(measure: "2", ingredient: potatoes, recipe: coley_parmesan)
Dose.create(measure:  "75g", ingredient: parmesan_cheese, recipe: coley_parmesan)

beef_mash = Recipe.new(name: "Beef with rice, honey and ginger", description: "Beef up your evening!", price: 14, photo: "beef_mash.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Main course", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "150g", ingredient: beef, recipe: beef_mash)
Dose.create(measure: "2 tablespoons", ingredient: honey, recipe: beef_mash)
Dose.create(measure: "100g", ingredient: rice, recipe: beef_mash)
Dose.create(measure: "2 tablespoons", ingredient: ginger, recipe: beef_mash)

brownie_custard = Recipe.new(name: "Brownie with custard cream", description:"Not for faint hearted", price: 9, photo: "brownie_custard.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 2000, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "375g", ingredient: dark_chocolate, recipe: brownie_custard)
Dose.create(measure: "375g", ingredient: butter, recipe: brownie_custard)
Dose.create(measure: "1 tablespoon", ingredient: vanilla, recipe: brownie_custard)
Dose.create(measure: "700ml", ingredient: custard_cream, recipe: brownie_custard)
Dose.create(measure:  "6", ingredient: egg, recipe: brownie_custard)

strawberry_compote = Recipe.new(name: "Strawberry compote with walnut shortbread", description: "Strawberries are always on top of the world", price: 8, photo: "strawberry_compote.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "250g", ingredient: strawberries, recipe: strawberry_compote)
Dose.create(measure: "3 slices", ingredient: walnut_shortbread, recipe: strawberry_compote)
Dose.create(measure:  "½ cup", ingredient: sugar, recipe: strawberry_compote)
Dose.create(measure:  "½ cup", ingredient: water, recipe: strawberry_compote)

cottage_cheese_honey = Recipe.new(name: "Cottage cheese with honey", description: "The perfect combination in the mouth", price: 7, photo: "cottage_cheese_honey.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "starter", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "1/2 cup", ingredient: cottage_cheese, recipe: cottage_cheese_honey)
Dose.create(measure: "2 teaspoons", ingredient: honey, recipe: cottage_cheese_honey)


order = Order.create(user: User.last, delivery_date: Date.today)
OrderItem.create(order: order, recipe: Recipe.first, quantity: 3)
OrderItem.create(order: order, recipe: Recipe.last, quantity: 1)
# OrderItem.create(order: order, recipe_id: 5, quantity: 3)





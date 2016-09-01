
OrderItem.destroy_all
Order.destroy_all
Dose.destroy_all
# Ingredient.destroy_all # DO NOT DESTROY ALL OF THEM, WE USE THE ONES SCRAPED
Recipe.destroy_all


dummy_instructions = "Set the oven to 400°F. Rinse and dry the parsley and lettuce. Cut the top leaves away from the stems of the parsley and add to the work bowl of a food processor. Measure out 2 teaspoons of the corntarch and add it to the work bowl, reserving the rest for the onion rings. Peel and slice ⅔ of the onion into thin rounds, then roughly chop the rest. Add the chopped onion to the work bowl.

Drain and rinse the beans. Add the beans, walnuts, oats, garlic powder, cumin, and 1/2 teaspoon of salt and a pinch of pepper to the food processor. Pulse until everything is incorporated but there are still visible pieces of the ingredients. Divide the mixture into 2 patties and put in the refrigerator to chill until you are ready to cook them.

Keeping the corn in the husk, place the ears on the middle rack for 15 to 20 minutes or until the husk is golden brown.Keeping the corn in the husk, place the ears on the middle rack for 15 to 20 minutes or until the husk is golden brown."

almonds = Ingredient.where(name: "Almonds").first_or_create!
artichoke_hearts = Ingredient.where(name: "Artichoke Hearts").first_or_create!
avocado = Ingredient.where(name: "Avocado").first_or_create!
bacon =  Ingredient.where(name: "Bacon").first_or_create!
banana = Ingredient.where(name: "Banana").first_or_create!
beans =  Ingredient.where(name: "Black beans").first_or_create!
beef =  Ingredient.where(name: "Beef").first_or_create!
blue_cheese_dressing = Ingredient.where(name: "Blue Cheese Dressing").first_or_create!
bread_crumbs = Ingredient.where(name: "Breadcrumbs").first_or_create!
broccoli =  Ingredient.where(name: "Broccoli").first_or_create!
butter = Ingredient.where(name: "Butter").first_or_create!
butternut_squash = Ingredient.where(name: "Butternut squash").first_or_create!
carrot = Ingredient.where(name: "Carrot").first_or_create!
cayenne = Ingredient.where(name: "Cayenne").first_or_create!
chicken = Ingredient.where(name: "Skinned chicken").first_or_create!
chickpeas =  Ingredient.where(name: "chickpeas").first_or_create!
chili_sauce = Ingredient.where(name: "Sweet Chili Sauce").first_or_create!
chocolate = Ingredient.where(name: "Chocolate").first_or_create!
chocolate_cake_mix = Ingredient.where(name: "Chocolate cake mix").first_or_create!
cinnamon = Ingredient.where(name: "Cinnamon").first_or_create!
cocoa = Ingredient.where(name: "Cocoa").first_or_create!
coley =  Ingredient.where(name: "coley").first_or_create!
corn = Ingredient.where(name: "Corn").first_or_create!
cottage_cheese =  Ingredient.where(name: "Cottage cheese").first_or_create!
courgette = Ingredient.where(name: "Courgette").first_or_create!
cream_cheese = Ingredient.where(name: "Cream cheese").first_or_create!
custard_cream= Ingredient.where(name: "custard cream").first_or_create!
dark_chocolate =  Ingredient.where(name: "Dark chocolate").first_or_create!
duck =  Ingredient.where(name: "Duck").first_or_create!
egg = Ingredient.where(name: "Egg").first_or_create!
garlic =  Ingredient.where(name: "Garlic").first_or_create!
ginger =  Ingredient.where(name: "Ginger").first_or_create!
green_onion = Ingredient.where(name: "Green Onion").first_or_create!
fries =  Ingredient.where(name: "Fries").first_or_create!
ham =  Ingredient.where(name: "Ham").first_or_create!
honey =  Ingredient.where(name:"Honey").first_or_create!
hot_pepper_sauce = Ingredient.where(name: "Frank’s RedHot Sauce").first_or_create!
kale = Ingredient.where(name: "Kale").first_or_create!
ketchup = Ingredient.where(name: "Ketchup").first_or_create!
kidney_beans = Ingredient.where(name: "Kidney beans").first_or_create!
lemon = Ingredient.where(name: "Lemon").first_or_create!
lime = Ingredient.where(name: "Lime").first_or_create!
lime_juice =  Ingredient.where(name: "Lime juice").first_or_create!
mashed_potatoes =  Ingredient.where(name: "Mashed_potatoes").first_or_create!
melon =  Ingredient.where(name: "melon").first_or_create!
melted_chocolate = Ingredient.where(name: "Melted Dark Chocolate").first_or_create
milk = Ingredient.where(name: "Milk").first_or_create!
mozzarella =  Ingredient.where(name: "Mozzarella cheese").first_or_create!
mushrooms = Ingredient.where(name: "Whole fresh mushrooms").first_or_create!
mustard = Ingredient.where(name: "Dijon mustard").first_or_create!
olive_oil = Ingredient.where(name: "Olive oil").first_or_create!
onion = Ingredient.where(name: "Onion").first_or_create!
orange_bell_pepper = Ingredient.where(name: "Bell pepper").first_or_create!
oregano = Ingredient.where(name: "Dried Oregano").first_or_create!
pancetta = Ingredient.where(name: "Pancetta").first_or_create!
parmesan_cheese = Ingredient.where(name: "Parmesan cheese").first_or_create!
parsley = Ingredient.where(name: "Parsley").first_or_create!
pasta =  Ingredient.where(name: "Pasta").first_or_create!
peanuts =  Ingredient.where(name: "Peanuts").first_or_create!
peas = Ingredient.where(name: "Peas").first_or_create!
pepper =  Ingredient.where(name: "Pepper").first_or_create!
pepper_jack_cheese = Ingredient.where(name: "Pepper Jack Cheese").first_or_create!
peppers =  Ingredient.where(name: "peppers").first_or_create!
pesto =  Ingredient.where(name: "pesto").first_or_create!
pork = Ingredient.where(name: "Pork").first_or_create!
potatoes =  Ingredient.where(name: "Potatoes").first_or_create!
quinoa = Ingredient.where(name: "Quinoa").first_or_create!
red_bell_pepper = Ingredient.where(name: "Bell pepper").first_or_create!
red_onion = Ingredient.where(name: "Red onion").first_or_create!
rice = Ingredient.where(name: "Rice").first_or_create!
rocket = Ingredient.where(name: "Rocket leaves").first_or_create!
romaine = Ingredient.where(name: "Romaine lettuce").first_or_create!
salt = Ingredient.where(name: "Salt").first_or_create!
sesame_oil =  Ingredient.where(name: "Sesame oil").first_or_create!
sesame_pastry =  Ingredient.where(name: "sesame pastry").first_or_create!
shallots = Ingredient.where(name: "Shallots").first_or_create!
spinach = Ingredient.where(name: "Spinach").first_or_create!
steak = Ingredient.where(name: "Flat Iron Steaks").first_or_create!
strawberries =  Ingredient.where(name: "Strawberry").first_or_create!
sugar = Ingredient.where(name: "Sugar").first_or_create!
thyme=  Ingredient.where(name: "Thyme").first_or_create!
tofu = Ingredient.where(name: "Tofu").first_or_create!
tomatoes =  Ingredient.where(name: "Tomatoes").first_or_create!
vanilla=  Ingredient.where(name: "Vanilla").first_or_create!
vanilla_pudding_mix = Ingredient.where(name: "Vanilla Pudding Mix").first_or_create!
vegetable_oil = Ingredient.where(name: "Vegetable oil").first_or_create!
vinegar =  Ingredient.where(name: "Vinegar").first_or_create!
walnut_shortbread=  Ingredient.where(name: "walnut shortbread").first_or_create!
water = Ingredient.where(name: "Water").first_or_create!
wheat = Ingredient.where(name: "Wheat").first_or_create!
whole_wheat_flour = Ingredient.where(name: "Whole wheat flour").first_or_create!
wine = Ingredient.where(name: "Red wine").first_or_create!


cassoulet = Recipe.create(name: "Real french cassoulet", category: "Main course", photo: "cassoulet.jpg", description: "Although there are innumerable versions of cassoulet, most are based on a stew of white beans and various forms of pork.", price: 7, prep_time: 25 , cooking_time: 40, calories: 870,
vegetarian: false, gluten_free: false, egg_free: false, dairy_free: false, vegan: false, instructions: dummy_instructions)

Dose.create(measure: "2 fresh", ingredient: ham, recipe: cassoulet)
Dose.create(measure: "1 pound boneless", ingredient: pork, recipe: cassoulet)
Dose.create(measure: "3 small", ingredient: carrot, recipe: cassoulet)
Dose.create(measure: "2 medium", ingredient: onion, recipe: cassoulet)
Dose.create(measure: "One 5-ounce piece of", ingredient: pancetta, recipe: cassoulet)
Dose.create(measure: "1 large plum", ingredient: tomatoes, recipe: cassoulet)

steak = Recipe.create(name: "Tradional steak / frites", category: "Main course", photo: "steak.jpg", description: "Steak-frites is a very common and popular dish served in brasseries throughout Europe consisting of steak paired with French fries.", price: 6, prep_time: 17 , cooking_time: 20, calories: 670,
vegetarian: false, gluten_free: false, egg_free: false, dairy_free: false, vegan: false, instructions: dummy_instructions)

Dose.create(measure: "4 steaks of", ingredient: beef, recipe: steak
Dose.create(measure: "5 tablespoons unsalted", ingredient: butter, recipe: steak)
Dose.create(measure: "Belgian", ingredient: fries, recipe: steak)
Dose.create(measure: "Freshly ground black", ingredient: pepper, recipe: steak)

summer_lemon_salad = Recipe.create(name: "Summer Lemon Salad", category: "Main course", photo: "lemon_salad.png", description: "Summery salad with bitter lemon flavours, great a hot day.", price: 4, prep_time: 10 , cooking_time: 5, calories: 150,
vegetarian: true, gluten_free: false, egg_free: false, dairy_free: true, vegan: true, instructions: dummy_instructions)

Dose.create(measure: "1/4 cup", ingredient: vegetable_oil, recipe: summer_lemon_salad)
Dose.create(measure: "2 cups", ingredient: mushrooms, recipe: summer_lemon_salad)
Dose.create(measure: "3 cloves", ingredient: garlic, recipe: summer_lemon_salad)
Dose.create(measure: "1/2", ingredient: avocado, recipe: summer_lemon_salad)
Dose.create(measure: "1/4 teaspoon", ingredient: salt, recipe: summer_lemon_salad)
Dose.create(measure: "1 bag" , ingredient: spinach, recipe: summer_lemon_salad)

magret_canard = Recipe.create(name: "Magret de canard", category: "Starter", photo: "magret_canard.png", description: "Hopefully you are very hungry to start with this. It's very tasty!", price: 4, prep_time: 10 , cooking_time: 5, calories: 150,
vegetarian: false, gluten_free: false, egg_free: false, dairy_free: true, vegan: false, instructions: dummy_instructions)

Dose.create(measure: "1/4 cup", ingredient: olive_oil, recipe: magret_canard)
Dose.create(measure: "1/2", ingredient: duck, recipe: magret_canard)
Dose.create(measure: "3 cloves", ingredient: garlic, recipe: magret_canard)
Dose.create(measure: "1/4 teaspoon", ingredient: honey, recipe: magret_canard)


butternut_squash_salad = Recipe.create(name: "Butternut Squash Salad", category: "Main course", photo: "butternut_squash_salad.jpg", description: "Super healthy summery salad. Great for vegans and vegetarians and it's also dairy-free!", price: 7, prep_time: 10 , cooking_time: 5, calories: 350,
vegetarian: true, gluten_free: false, egg_free: false, dairy_free: true, vegan: false, instructions: dummy_instructions)

Dose.create(measure: "1/4 cup", ingredient: vegetable_oil, recipe: butternut_squash_salad)
Dose.create(measure: "10 oz", ingredient: tofu, recipe: butternut_squash_salad)
Dose.create(measure: "3 cloves", ingredient: garlic, recipe: butternut_squash_salad)
Dose.create(measure: "1/2", ingredient: avocado, recipe: butternut_squash_salad)
Dose.create(measure: "1/4 teaspoon", ingredient: salt, recipe: butternut_squash_salad)
Dose.create(measure: "1 whole" , ingredient: butternut_squash, recipe: butternut_squash_salad)


kale_quinoa_salad = Recipe.create(name: "Kale and Quinoa Salad", category: "Main course", photo: "kale_quinoa_salad.jpg", description: "Super healthy summery salad. Great for vegans and vegetarians and it's also dairy-free!", price: 7, prep_time: 10 , cooking_time: 5, calories: 350,
vegetarian: true, gluten_free: false, egg_free: false, dairy_free: true, vegan: false, instructions: dummy_instructions)

Dose.create(measure: "1/4 cup", ingredient: vegetable_oil, recipe: kale_quinoa_salad)
Dose.create(measure: "1 cup", ingredient: quinoa, recipe: kale_quinoa_salad)
Dose.create(measure: "3 cloves", ingredient: garlic, recipe: kale_quinoa_salad)
Dose.create(measure: "2 cups", ingredient: red_bell_pepper, recipe: kale_quinoa_salad)
Dose.create(measure: "1/4 teaspoon", ingredient: salt, recipe: kale_quinoa_salad)
Dose.create(measure: "1 package" , ingredient: kale, recipe: kale_quinoa_salad)


paella_primavera = Recipe.create(name: "Paella Primavera", category: "Main course", photo: "paella_primavera.jpg", description: "Light and healthy - great option for those who can't eat dairy. A taste of Spain in your home!", price: 8, prep_time: 10 , cooking_time: 10, calories: 350,
vegetarian: true, gluten_free: false, egg_free: false, dairy_free: true, vegan: false, instructions: dummy_instructions)

Dose.create(measure: "1/4 cup", ingredient: vegetable_oil, recipe: paella_primavera)
Dose.create(measure: "1 cup", ingredient: rice, recipe: paella_primavera)
Dose.create(measure: "3 cloves", ingredient: garlic, recipe: paella_primavera)
Dose.create(measure: "2 cups", ingredient: red_bell_pepper, recipe: paella_primavera)
Dose.create(measure: "1/4 teaspoon", ingredient: salt, recipe: paella_primavera)
Dose.create(measure: "1" , ingredient: egg, recipe: paella_primavera)


banana_chocolate_muffins = Recipe.create(name: "Banana Chocolate Chip Muffins", category: "Dessert", photo: "banana_choc_chip.jpg", description: "Great for those who can't eat dairy and a great way to get rid of old bananas!", price: 4, prep_time: 10 , cooking_time: 10, calories: 250,
vegetarian: true, gluten_free: false, egg_free: false, dairy_free: true, vegan: false, instructions: dummy_instructions)

Dose.create(measure: "1/4 cup", ingredient: vegetable_oil, recipe: banana_chocolate_muffins)
Dose.create(measure: "100g", ingredient: sugar, recipe: banana_chocolate_muffins)
Dose.create(measure: "1", ingredient: banana, recipe: banana_chocolate_muffins)
Dose.create(measure: "2 cups", ingredient: chocolate_cake_mix, recipe: banana_chocolate_muffins)
Dose.create(measure: "1/4 teaspoon", ingredient: salt, recipe: banana_chocolate_muffins)
Dose.create(measure: "1" , ingredient: egg, recipe: banana_chocolate_muffins)


chocolate_quinoa_strawberries = Recipe.create(name: "Chocolate Almond Qunioa Strawberries", category: "Dessert", photo: "chocolate_quinoa_strawberries.jpg", description: "Great dairy-free dessert full of nutrition. Light, fresh, and summery!", price: 6, prep_time: 15 , cooking_time: 5, calories: 150,
vegetarian: true, gluten_free: true, egg_free: true, dairy_free: true, vegan: true, instructions: dummy_instructions)

Dose.create(measure: "1/4 cup", ingredient: quinoa, recipe: chocolate_quinoa_strawberries)
Dose.create(measure: "100g", ingredient: sugar, recipe: chocolate_quinoa_strawberries)
Dose.create(measure: "1", ingredient: banana, recipe: chocolate_quinoa_strawberries)
Dose.create(measure: "2 cups", ingredient: chocolate_cake_mix, recipe: chocolate_quinoa_strawberries)
Dose.create(measure: "12", ingredient: almonds, recipe: chocolate_quinoa_strawberries)
Dose.create(measure: "1/2 teaspoon" , ingredient: cinnamon, recipe: chocolate_quinoa_strawberries)


banoffee_tart = Recipe.create(name: "Banoffee Tarts", category: "Dessert", photo: "banoffee_tart.jpg", description: "Delicious vegan version of traditional banoffee tarts!", price: 5, prep_time: 10 , cooking_time: 5, calories: 200,
vegetarian: true, gluten_free: true, egg_free: true, dairy_free: true, vegan: true, instructions: dummy_instructions)

Dose.create(measure: "1/4 cup", ingredient: chocolate_cake_mix, recipe: chocolate_quinoa_strawberries)
Dose.create(measure: "100g", ingredient: sugar, recipe: chocolate_quinoa_strawberries)
Dose.create(measure: "3", ingredient: banana, recipe: chocolate_quinoa_strawberries)
Dose.create(measure: "2 cups", ingredient: chocolate_cake_mix, recipe: chocolate_quinoa_strawberries)
Dose.create(measure: "8 oz", ingredient: chocolate, recipe: chocolate_quinoa_strawberries)
Dose.create(measure: "1/2 teaspoon" , ingredient: cinnamon, recipe: chocolate_quinoa_strawberries)






houmous = Recipe.create(name: "Houmous with peanuts", category: "starter", photo: "houmous.png", description: "Hummus is this delicious mashed chickpeas, blended with tahini, the sesame paste. Hummus is native to the Middle East countries. It is eaten raw, with raw vegetables, or with pita bread!", price:3, prep_time:6 , cooking_time:0, calories:150,

vegetarian: true, gluten_free: true, egg_free: true, dairy_free: true, vegan: true, instructions: dummy_instructions)

Dose.create(measure: "400g of", ingredient:chickpeas, recipe: houmous)
Dose.create(measure: "100g of", ingredient:peanuts, recipe: houmous)
Dose.create(measure: "dessert spoon of", ingredient: sesame_oil, recipe: houmous)
Dose.create(measure: "10g of", ingredient: sesame_pastry, recipe: houmous)
Dose.create(measure: "some", ingredient: garlic, recipe: houmous)
Dose.create(measure: "2" , ingredient: lemon, recipe: houmous)

bean_burger = Recipe.create(name: "Bean Burger", description: "Better bean burger with spiced ketchup and onions", price: 8, photo: "bean_burger.png", instructions: dummy_instructions, prep_time: 14, cooking_time: 15, category: "Main course", calories: 350, gluten_free: false, dairy_free: true, egg_free: true, vegetarian: true, vegan: true)

Dose.create(measure: "a bunch", recipe: bean_burger, ingredient: parsley)
Dose.create(measure: "2 leaves", recipe: bean_burger, ingredient: romaine)
Dose.create(measure: "1", recipe: bean_burger, ingredient: onion)
Dose.create(measure: "1 package", recipe: bean_burger, ingredient: kidney_beans)
Dose.create(measure: "3 tablespoons", recipe: bean_burger, ingredient: ketchup)
Dose.create(measure: "2 ears", recipe: bean_burger, ingredient: corn)


rice_risotto = Recipe.create(name: "Lemon Rice Risotto", description: "Meyer lemon forbidden rice risotto with sweet peas", price: 6, photo: "rice_risotto.png", instructions: dummy_instructions, prep_time: 12, cooking_time: 10, category: "Main course", calories: 350, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: true, vegan: true)

Dose.create(measure: "1", recipe: rice_risotto, ingredient: shallots)
Dose.create(measure: "1 cup", recipe: rice_risotto, ingredient: rice)
Dose.create(measure: "1 teaspoon", recipe: rice_risotto, ingredient: mustard)
Dose.create(measure: "⅓ cup", recipe: rice_risotto, ingredient: peas)
Dose.create(measure: "3 tablespoons", recipe: rice_risotto, ingredient: vegetable_oil)
Dose.create(measure: "1", recipe: rice_risotto, ingredient: lemon)


asado_negro = Recipe.create(name: "Venezuelan Asado Negro", description: "Venezuelan asado negro with roasted vegetables and tostones", price: 5, photo: "asado_negro.jpg", instructions: dummy_instructions, prep_time: 12, cooking_time: 15, category: "Main course", calories: 527, gluten_free: true, dairy_free: false, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "2 cloves", recipe: asado_negro, ingredient: shallots)
Dose.create(measure: "2", recipe: asado_negro, ingredient: courgette)
Dose.create(measure: "2", recipe: asado_negro, ingredient: steak)
Dose.create(measure: "½ tsp", recipe: asado_negro, ingredient: oregano)
Dose.create(measure: "3 fluid oz", recipe: asado_negro, ingredient: wine)
Dose.create(measure: "⅗ oz", recipe: asado_negro, ingredient: butter)


tofu_pad_thai = Recipe.create(name: "Tofu Pad Thai", description: "Tofu Pad Thai with carrots and sweet chili sauce", price: 9, photo: "tofu_pad_thai.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 10, category: "Main course", calories: 390, gluten_free: true, dairy_free: true, egg_free: false, vegetarian: true, vegan: true)

Dose.create(measure: "2 cloves", recipe: tofu_pad_thai, ingredient: tofu)
Dose.create(measure: "2", recipe: tofu_pad_thai, ingredient: green_onion)
Dose.create(measure: "1", recipe: tofu_pad_thai, ingredient: lime)
Dose.create(measure: "¾ oz", recipe: tofu_pad_thai, ingredient: peanuts)
Dose.create(measure: "6 fluid oz", recipe: tofu_pad_thai, ingredient: chili_sauce)
Dose.create(measure: "4 oz", recipe: tofu_pad_thai, ingredient: carrot)


tuscan_chicken = Recipe.create(name: "Tuscan Chicken", description: "Tuscan Chicken with rainbow vegetable skewers", price: 7, photo: "tuscan_chicken.jpg", instructions: dummy_instructions, prep_time: 15, cooking_time: 0, category: "Main course", calories: 406, gluten_free: true, dairy_free: true, egg_free: false, vegetarian: false, vegan: false)

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


artichoke_hearts_gratin = Recipe.create(name: "Artichoke Hearts Gratin", description: "Tasty all-veggie appetizer", price: 4, photo: "artichoke_gratin.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 15, category: "Starter", calories: 360, gluten_free: false, dairy_free: false, egg_free: true, vegetarian: true, vegan: false)

Dose.create(measure: "6", recipe: artichoke_hearts_gratin, ingredient: artichoke_hearts)
# vegatable_oil
Dose.create(measure: "1 teaspoon", recipe: artichoke_hearts_gratin, ingredient: vegetable_oil)
Dose.create(measure: "2 tablespoons", recipe: artichoke_hearts_gratin, ingredient: bread_crumbs)
Dose.create(measure: "1 tablespoon", recipe: artichoke_hearts_gratin, ingredient: olive_oil)
# lemon
Dose.create(measure: "½ in wedges", recipe: artichoke_hearts_gratin, ingredient: lemon)
Dose.create(measure: "1 pinch", recipe: artichoke_hearts_gratin, ingredient: salt)

mocha_bundt_cake = Recipe.create(name: "Mexican Mocha Bundt Cake", description: "Delicious choclatey crowd-pleaser", price: 5, photo: "mocha_cake.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 460, gluten_free: false, dairy_free: false, egg_free: false, vegetarian: true, vegan: false)

Dose.create(measure: "1 package", recipe: mocha_bundt_cake, ingredient: vanilla_pudding_mix)
Dose.create(measure: "1 cup", recipe: mocha_bundt_cake, ingredient: milk)
# vegetable_oil
Dose.create(measure: "½ cup", recipe: mocha_bundt_cake, ingredient: vegetable_oil)
Dose.create(measure: "1 package", recipe: mocha_bundt_cake, ingredient: chocolate_cake_mix)
Dose.create(measure: "4", recipe: mocha_bundt_cake, ingredient: egg)
Dose.create(measure: "1 tablespoon", recipe: mocha_bundt_cake, ingredient: cinnamon)

courgette_brownies = Recipe.create(name: "Whole-Wheat Chocolate Courgette Brownies", description: "Moist, chocolatey, delicious, double-chocolate brownies", price: 4, photo: "courgette_brownies.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 320, gluten_free: false, dairy_free: true, egg_free: false, vegetarian: true, vegan: false)

Dose.create(measure: "1 cup", recipe: courgette_brownies, ingredient: whole_wheat_flour)
Dose.create(measure: "⅓ cup", recipe: courgette_brownies, ingredient: cocoa)
# vegetable_oil
Dose.create(measure: "¼ cup", recipe: courgette_brownies, ingredient: vegetable_oil)
Dose.create(measure: "½ cup", recipe: courgette_brownies, ingredient: sugar)
Dose.create(measure: "2 large", recipe: courgette_brownies, ingredient: egg)
# courgette
Dose.create(measure: "1.5 cups", recipe: courgette_brownies, ingredient: courgette)

italian_salad = Recipe.create(name: "Italian salad with pesto", description: "The perfect italian taste", price: 4, photo: "italian_salad.png", instructions: dummy_instructions, prep_time: 8, cooking_time: 0, category: "Starter", calories: 250, gluten_free: true, dairy_free: false, egg_free: false, vegetarian: true, vegan: false)

Dose.create(measure: "1/4" , ingredient: melon, recipe: italian_salad)
Dose.create(measure: "2", ingredient: mozzarella, recipe: italian_salad)
Dose.create(measure:  "100g", ingredient: rocket, recipe: italian_salad)
Dose.create(measure:  "4 tablespoons", ingredient: pesto, recipe: italian_salad)

gazpacho = Recipe.create(name: "Gazpacho of red peppers and tomatoes", description: "Richful mix of vegetables", price: 3, photo: "gazpacho.png", instructions: dummy_instructions, prep_time: 12, cooking_time: 0, category: "Starter", calories: 150, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: true, vegan: true)

Dose.create(measure: "5", ingredient: tomatoes, recipe: gazpacho)
Dose.create(measure: "3", ingredient: peppers, recipe: gazpacho)
Dose.create(measure: "2", ingredient: onion, recipe: gazpacho)

mexican_salad = Recipe.create(name: "Mexican salad with beans", description: "The right salad at the right place", price:4, photo: "mexican_salad.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 0, category: "Starter", calories: 270, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: true, vegan: false)

Dose.create(measure: "1 can", ingredient: beans, recipe: mexican_salad)
Dose.create(measure: "1 can", ingredient: corn, recipe: mexican_salad)
Dose.create(measure: "2", ingredient: onion, recipe: mexican_salad)
Dose.create(measure: "1/2 cup", ingredient: vinegar, recipe: mexican_salad)
Dose.create(measure: "2 tablespoons", ingredient: lime_juice, recipe: mexican_salad)

pasta_carbonara = Recipe.create(name: "Pasta carbonara with thyme", description: "Get the meal rolling with your friends", price: 6, photo: "pasta_carbonara.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 10, category: "Main course", calories: 490, gluten_free: false, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)
Dose.create(measure: "250g", ingredient: pasta, recipe: pasta_carbonara)
Dose.create(measure: "2 pieces", ingredient: bacon, recipe: pasta_carbonara)
Dose.create(measure:  "1 tablespoon", ingredient: thyme, recipe: pasta_carbonara)
Dose.create(measure: "1 pinch", ingredient: salt, recipe: pasta_carbonara)

coley_parmesan = Recipe.create(name: "Coley with potatoes and parmesan cream", description: "For fish lovers, give it a try", price: 7, photo: "coley_parmesan.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Main course", calories: 270, gluten_free: true, dairy_free: false, egg_free: false, vegetarian: true, vegan: false)

Dose.create(measure: "1", ingredient: coley, recipe: coley_parmesan)
Dose.create(measure: "2", ingredient: potatoes, recipe: coley_parmesan)
Dose.create(measure:  "75g", ingredient: parmesan_cheese, recipe: coley_parmesan)

beef_mash = Recipe.create(name: "Beef with rice, honey and ginger", description: "Beef up your evening!", price: 6, photo: "beef_mash.png", instructions: dummy_instructions, prep_time: 14, cooking_time: 20, category: "Main course", calories: 370, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "150g", ingredient: beef, recipe: beef_mash)
Dose.create(measure: "2 tablespoons", ingredient: honey, recipe: beef_mash)
Dose.create(measure: "100g", ingredient: rice, recipe: beef_mash)
Dose.create(measure: "2 tablespoons", ingredient: ginger, recipe: beef_mash)

brownie_custard = Recipe.create(name: "Brownie with custard cream", description:"Not for faint hearted", price: 5, photo: "brownie_custard.png", instructions: dummy_instructions, prep_time: 14, cooking_time: 20, category: "Dessert", calories: 380, gluten_free: false, dairy_free: false, egg_free: false, vegetarian: true, vegan: false)

Dose.create(measure: "375g", ingredient: dark_chocolate, recipe: brownie_custard)
Dose.create(measure: "375g", ingredient: butter, recipe: brownie_custard)
Dose.create(measure: "1 tablespoon", ingredient: vanilla, recipe: brownie_custard)
Dose.create(measure: "700ml", ingredient: custard_cream, recipe: brownie_custard)
Dose.create(measure:  "6", ingredient: egg, recipe: brownie_custard)

strawberry_compote = Recipe.create(name: "Strawberry compote with walnut shortbread", description: "Strawberries are always on top of the world", price: 4, photo: "strawberry_compote.png", instructions: dummy_instructions, prep_time: 7, cooking_time: 0, category: "Dessert", calories: 160, gluten_free: false, dairy_free: false, egg_free: false, vegetarian: true, vegan: true)

Dose.create(measure: "250g", ingredient: strawberries, recipe: strawberry_compote)
Dose.create(measure: "3 slices", ingredient: walnut_shortbread, recipe: strawberry_compote)
Dose.create(measure:  "½ cup", ingredient: sugar, recipe: strawberry_compote)
Dose.create(measure:  "½ cup", ingredient: water, recipe: strawberry_compote)

cottage_cheese_honey = Recipe.create(name: "Cottage cheese with honey", description: "The perfect combination in the mouth", price: 4, photo: "cottage_cheese_honey.png", instructions: dummy_instructions, prep_time:8, cooking_time: 9, category: "Starter", calories: 220, gluten_free: true, dairy_free: false, egg_free: true, vegetarian: true, vegan: false)

Dose.create(measure: "1/2 cup", ingredient: cottage_cheese, recipe: cottage_cheese_honey)
Dose.create(measure: "2 teaspoons", ingredient: honey, recipe: cottage_cheese_honey)

taboulet_aux_herbes = Recipe.new(name: "Tabbouleh", category: "Starter", photo: "taboulet_aux_herbes.png", description: "A magical experience into your mouth, that’s how they call it", price: 5, prep_time: 10 , cooking_time: 0, calories: 300, vegetarian: true, gluten_free: true, egg_free: true, dairy_free: true, vegan: true, instructions: dummy_instructions)

Dose.create(measure: "1cup of ", ingredient: wheat, recipe: taboulet_aux_herbes)
Dose.create(measure: "3", ingredient: tomatoes, recipe: taboulet_aux_herbes )
Dose.create(measure: "2 tablespoons" , ingredient: olive_oil, recipe: taboulet_aux_herbes)

salad_broccolis = Recipe.new(name: "Broccoli salad with peanuts and pesto", category: "Starter", photo: "salad_broccolis.png", description: "Fresh and healthy, the broccoli salad brings joy into your plate, blended with tahini and sesame.", price:3, prep_time:15 , cooking_time:0, calories: 250, vegetarian: true, gluten_free: true, egg_free: true, dairy_free: true, vegan: true, instructions: dummy_instructions)

Dose.create(measure: "400g of", ingredient: broccoli, recipe: salad_broccolis)
Dose.create(measure: "10g of", ingredient: peanuts, recipe: salad_broccolis)
Dose.create(measure: "1", ingredient: garlic, recipe: salad_broccolis)
Dose.create(measure: "2 tablespoons" , ingredient: pesto, recipe: salad_broccolis)

salad_mozzarella = Recipe.new(name: "Salad Mozzarella", category: "Starter", photo: "salad_mozzarella.png", description:" Fresh and easy, the mozzarella salad is the salad not to miss in your italian evening", price:4, prep_time:6 , cooking_time:0, calories:150, vegetarian: true, gluten_free: true, egg_free: true, dairy_free: false, vegan: true, instructions: dummy_instructions)

Dose.create(measure: "400g", ingredient: mozzarella, recipe: salad_mozzarella)
Dose.create(measure: "10g of", ingredient: peanuts, recipe: salad_mozzarella)
Dose.create(measure: "some", ingredient: garlic, recipe: salad_mozzarella)
Dose.create(measure: "2 tablespoons" , ingredient: olive_oil, recipe: salad_mozzarella)


order = Order.create(user: User.last, delivery_date: Date.today)
OrderItem.create(order: order, recipe: Recipe.first, quantity: 3)
OrderItem.create(order: order, recipe: Recipe.last, quantity: 1)
# OrderItem.create(order: order, recipe_id: 5, quantity: 3)





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "destroying PartyRecipes..."
PartyRecipe.destroy_all
puts "destroying UserRecipes..."
UserRecipe.destroy_all
puts "destroying recipes..."
Party.destroy_all
puts "destroying users..."
Recipe.destroy_all
puts "destroying parties..."
User.destroy_all

puts "Creating Users..."

u1 = User.create!(name: 'Filipe', email: 'filipe@gmail.com', password: 'password', diet: 'Lactose Free')
u2 = User.create(name: 'Marie', email: 'marie@gmail.com', password: 'password', diet: 'Gluten Free')
u3 = User.create(name: 'Maria', email: 'maria@gmail.com', password: 'password', diet: 'Vegetarian')
u4 = User.create(name: 'Diandra', email: 'diandra@gmail.com', password: 'password', diet: 'No Pork')
u5 = User.create(name: 'Billy', email: 'billy@gmail.com', password: 'password', diet: 'Nuts Allergy')

puts "Created #{User.count} Users"

puts "Creating Recipes..."

r1 = Recipe.create(title: 'Burritos Locos',
                   description: 'Easy to make and very spicy!',
                   prep_time: 15,
                   #  ingredients: "Coriander, Tortillas, Chilli, Sweetcorn and Spicy Mayo.",
                   photo_url: 'https://images.rawpixel.com/image_1300/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L3BmLXM2Ni1tb25pa2EtY3VycnktY2hpY2tlbi10YWNvcy13aXRoLXZlZ2dpZXMtYW5kLWZyZXNoLWNvcmlhbmRlci0xYS5qcGc.jpg')
r2 = Recipe.create(title: 'Sushi Rolls',
                   description: 'The best homemade Sushi',
                   prep_time: 50,
                   #  ingredients: "Sushi Rice, Mayo, Soy Sauce, Smoked Salmon and Wasabi.",
                   photo_url: 'https://images.rawpixel.com/image_1300/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcGYtbmFtZTYxOTYtbmFtZS1jaGltLmpwZw.jpg')
r3 = Recipe.create(title: 'Pizza Napolitana',
                   description: 'Authentic Neapolitan Pizza.',
                   prep_time: 45,
                   #  ingredients: "Flour, Tomato, Mozzarela, Parmesan, Olive Oil and Basil.",
                   photo_url: 'https://images.rawpixel.com/image_1300/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcGYtZWRnYXJjYXN0cmVqb24yLW1hcmdoZXJpdGFwaXp6YS0wODQtYWUuanBn.jpg')
r4 = Recipe.create(title: 'Souvlaki Gyros',
                   description: 'Make your own traditional Greek pork souvlaki with gyros.',
                   prep_time: 25,
                   #  ingredients: "Pork, Garlic, Onion, Pita Bread, Tomato and Potatoes.",
                   photo_url: 'https://img.freepik.com/free-photo/gyros-souvlaki-wraps-pita-bread-with-chicken-potatoes-tzatziki-sauce_79830-1779.jpg')
r5 = Recipe.create(title: 'Marry Me Chicken',
                   description: 'She/He will marry you after eating this!',
                   prep_time: 45,
                   #  ingredients: "Chicken Breast, Olive Oil, Garlic, Cheese, Heavy Cream and Fresh Basil.",
                   photo_url: 'https://www.thespruceeats.com/thmb/Nagg1dO9v0MYzT8B0tB8xuCsafk=/1500x1000/filters:fill(auto,1)/marry-me-chicken-5225352-hero-06-dea1c6367dbe4dc38984552a39504b11.jpg')
r6 = Recipe.create(title: 'Tarte Tatin',
                   description: 'Sweet and Sticky Caramel with Apples on top of Pastry.',
                   prep_time: 20,
                   #  ingredients: "Flour, Apples, Sugar, Butter and Creme Fraice.",
                   photo_url: 'https://www.vzug.com/medias/sys_master/recipeimages/recipeimages/h53/h1f/9450096787486/recipe-img-slide.jpg')
r7 = Recipe.create(title: 'Fancy Cupcakes',
                   description: 'Queen worthy Cupcakes.',
                   prep_time: 60,
                   #  ingredients: "Flour, Butter, Sugar, Vanilla Extract, Milk and Pink Fondant.",
                   photo_url: 'https://images.squarespace-cdn.com/content/v1/5402e23ce4b0a7034afad3a2/1564664237026-L0WKZUT3AQT9VYV620UB/pink-gin-raspberry-lemon-cupcake.jpg')
r8 = Recipe.create(title: 'Ghost Bagels',
                   description: 'Spooky Bagels, because why not?',
                   prep_time: 55,
                   #  ingredients: "Flour, Butter, Salmon and Cream Cheese.",
                   photo_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/ghost-bagels-1570113960.jpg')
r9 = Recipe.create(title: 'Tuna Salad',
                   description: 'salad composed primarily of chopped canned tuna fish. tuna fish salad. salad - food mixtures either arranged on a plate or tossed and served with a moist dressing; usually consisting of or including greens.',
                   prep_time: 25,
                   #  ingredients: "Lemons, Onions, Celery, Tuna, Capers, Bread and Lettuce.",
                   photo_url: 'https://3sg1ub4c9ujs3ydnjk3mgck0-wpengine.netdna-ssl.com/wp-content/uploads/2020/06/John-West-Final_Italian-Tuna-and-Mozzarella-Salad-with-Ciabatta_2160x960px.jpg')
r10 = Recipe.create(title: 'Clam Pasta with Spicy, Toasted Breadcrumbs',
                    description: 'Delicious linguine with authentic New Zealand clams in a garlic and butter sauce.',
                    prep_time: 40,
                    # ingredients: "Linguini, Olive Oil, Clams, Garlic, Lemon, Parsley, Red Pepper Flakes",
                    photo_url: 'https://cdn.whatsgabycooking.com/wp-content/uploads/2016/03/WGC-Linguine-with-Clams-2-copy-2.jpg')
r11 = Recipe.create(title: 'Beans with Beans',
                    description: "Beans with beans it's pretty straight forward, only for bean lovers.",
                    prep_time: 30,
                    # ingredients: "Beans, Olive Oil, Red Pepper Flakes, Anchovies, Garlic and Parsley",
                    photo_url: 'https://realfood.tesco.com/media/images/RFO-1400x919-CannelliniBeans-a8c72d1b-c0e6-4fbb-8f2e-3fc1c0e0624c-0-1400x919.jpg')
r12 = Recipe.create(title: 'Wine-Braised Chicken With Artichoke Hearts',
                    description: 'Heart-warming Chicken with beautiful and delicate artichokes hearts.',
                    prep_time: 45,
                    # ingredients: "Chicken, Red Onions, Dry White Whine, Oregano, Artichocke Hearts and Olive Oil.",
                    photo_url: 'https://images.squarespace-cdn.com/content/v1/541b1515e4b0a990b33a796e/1611257874220-LCJ8B1128CFDHCHUM2A6/alison-roman-cooking-wine-braised-chicken-with-artichoke-hearts.jpg?')
r13 = Recipe.create(title: 'Key Lime Pie',
                    description: "This is constantly a go-to, a crowd-pleaser (except for the one person who doesn't like limes, I guess!).",
                    prep_time: 50,
                    # ingredients: "Graham Crackers, Coconut Oil, Butter, Sugar, Eggs, Lime Juice and Heavy Cream.",
                    photo_url: 'https://static01.nyt.com/images/2019/05/09/dining/key-lime-pie-2/key-lime-pie-2-articleLarge.jpg')

puts "Created #{Recipe.count} Recipes"

puts "Creating UserRecipes..."

ur1 = UserRecipe.create(user_id: u2.id, recipe_id: r1.id)
ur2 = UserRecipe.create(user_id: u1.id, recipe_id: r2.id)
ur3 = UserRecipe.create(user_id: u1.id, recipe_id: r3.id)
ur4 = UserRecipe.create(user_id: u3.id, recipe_id: r4.id)
ur5 = UserRecipe.create(user_id: u2.id, recipe_id: r5.id)
ur6 = UserRecipe.create(user_id: u2.id, recipe_id: r6.id)
ur7 = UserRecipe.create(user_id: u4.id, recipe_id: r7.id)
ur8 = UserRecipe.create(user_id: u4.id, recipe_id: r8.id)

puts "Created #{UserRecipe.count} UserRecipes"

puts "Creating Parties..."

p1 = Party.create!(title: 'Mexican Fiesta', address: "Cancún", theme: "Mexican", date: "21-06-2022", attendancy: 6, appetizers: 1, mains: 1, desserts: 1, user_id: u3.id)
p2 = Party.create(title: 'Japanese Dinner', address: "Tokyo", theme: "Japanese", date: "29-06-2022", attendancy: 4, appetizers: 1, mains: 1, desserts: 1, user_id: u1.id)
p3 = Party.create(title: 'Cena Italiana', address: "Napoli", theme: "Italian", date: "12-06-2022", attendancy: 4, appetizers: 1, mains: 1, desserts: 1, user_id: u1.id)
p4 = Party.create(title: 'Greek Feast', address: "Athens", theme: "Greek", date: "6-06-2022", attendancy: 8, appetizers: 1, mains: 1, desserts: 1, user_id: u3.id)
p5 = Party.create(title: 'Romantic Dinner', address: "Paris", theme: "Romantic", date: "8-06-2022", attendancy: 2, appetizers: 1, mains: 1, desserts: 1, user_id: u2.id)
p6 = Party.create(title: 'French Finess', address: "Paris", theme: "French", date: "3-06-2022", attendancy: 5, appetizers: 1, mains: 1, desserts: 1, user_id: u2.id)
p7 = Party.create(title: 'Brit Tea Party', address: "London", theme: "Tea", date: "26-06-2022", attendancy: 4, appetizers: 1, mains: 1, desserts: 1, user_id: u4.id)
p8 = Party.create(title: 'Halloween Bagel Party', address: "London", theme: "Halloween", date: "29-06-2022", attendancy: 9, appetizers: 1, mains: 1, desserts: 1, user_id: u4.id)

puts "Created #{Party.count} Parties"

puts "Creating PartyRecipes..."

PartyRecipe.create!(recipe_id: r1.id, party_id: p1.id)
PartyRecipe.create(recipe_id: r2.id, party_id: p2.id)
PartyRecipe.create(recipe_id: r3.id, party_id: p3.id)
PartyRecipe.create(recipe_id: r4.id, party_id: p4.id)
PartyRecipe.create(recipe_id: r5.id, party_id: p5.id)
PartyRecipe.create(recipe_id: r6.id, party_id: p6.id)
PartyRecipe.create(recipe_id: r7.id, party_id: p7.id)
PartyRecipe.create(recipe_id: r8.id, party_id: p8.id)
PartyRecipe.create(recipe_id: r9.id, party_id: p2.id)
PartyRecipe.create(recipe_id: r10.id, party_id: p3.id)
PartyRecipe.create(recipe_id: r11.id, party_id: p1.id)
PartyRecipe.create(recipe_id: r12.id, party_id: p6.id)
PartyRecipe.create(recipe_id: r13.id, party_id: p2.id)
PartyRecipe.create(recipe_id: r13.id, party_id: p1.id)
PartyRecipe.create(recipe_id: r13.id, party_id: p3.id)
PartyRecipe.create(recipe_id: r9.id, party_id: p4.id)
PartyRecipe.create(recipe_id: r11.id, party_id: p7.id)
PartyRecipe.create(recipe_id: r3.id, party_id: p8.id)
PartyRecipe.create(recipe_id: r13.id, party_id: p4.id)
PartyRecipe.create(recipe_id: r9.id, party_id: p5.id)
PartyRecipe.create(recipe_id: r7.id, party_id: p5.id)
PartyRecipe.create(recipe_id: r9.id, party_id: p6.id)
PartyRecipe.create(recipe_id: r12.id, party_id: p7.id)
PartyRecipe.create(recipe_id: r13.id, party_id: p8.id)

puts "Created #{PartyRecipe.count} PartyRecipes"

puts "Creating Ingredients..."
i1 = Ingredient.create(name: 'Graham Crackers')
i2 = Ingredient.create(name: 'Coconut Oil')
i3 = Ingredient.create(name: 'Butter')
i4 = Ingredient.create(name: 'Sugar')
i5 = Ingredient.create(name: 'Eggs')
i6 = Ingredient.create(name: 'Lime Juice')
i7 = Ingredient.create(name: 'Heavy Cream')
i8 = Ingredient.create(name: 'Lemons')
i9 = Ingredient.create(name: 'Onions')
i10 = Ingredient.create(name: 'Celery')
i11 = Ingredient.create(name: 'Tuna')
i12 = Ingredient.create(name: 'Capers')
i13 = Ingredient.create(name: 'Bread')
i14 = Ingredient.create(name: 'Lettuce')
i15 = Ingredient.create(name: 'Heavy Cream')
i16 = Ingredient.create(name: 'Sushi Rice')
i17 = Ingredient.create(name: 'Mayo')
i18 = Ingredient.create(name: 'Soy Sauce')
i19 = Ingredient.create(name: 'Smoked Salmon')
i20 = Ingredient.create(name: 'Wasabi')

puts "Created #{Ingredient.count} Ingredients"

puts "Creating Ingredient Recipes..."

RecipeIngredient.create(recipe_id: r13.id, ingredient_id: i1.id)
RecipeIngredient.create(recipe_id: r13.id, ingredient_id: i2.id)
RecipeIngredient.create(recipe_id: r13.id, ingredient_id: i3.id)
RecipeIngredient.create(recipe_id: r13.id, ingredient_id: i4.id)
RecipeIngredient.create(recipe_id: r13.id, ingredient_id: i5.id)
RecipeIngredient.create(recipe_id: r13.id, ingredient_id: i6.id)
RecipeIngredient.create(recipe_id: r13.id, ingredient_id: i7.id)
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i8.id)
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i9.id)
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i10.id)
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i11.id)
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i12.id)
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i13.id)
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i14.id)
RecipeIngredient.create(recipe_id: r9.id, ingredient_id: i15.id)
RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i16.id)
RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i17.id)
RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i18.id)
RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i19.id)
RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i20.id)

puts "Created #{RecipeIngredient.count} Recipe Ingredients"

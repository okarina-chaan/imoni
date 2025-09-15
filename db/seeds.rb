pork = Ingredient.create!(name: "豚肉", category: "肉")
beef = Ingredient.create!(name: "牛肉", category: "肉")
chiken = Ingredient.create!(name: "鶏肉", category: "肉")

mushroom = Ingredient.create!(name: "きのこ", category: "野菜")
satoimo = Ingredient.create!(name: "里芋", category: "野菜")
poteto = Ingredient.create!(name: "じゃがいも", category: "野菜")
carrot = Ingredient.create!(name: "にんじん", category: "野菜")
konnyaku = Ingredient.create!(name: "こんにゃく", category: "野菜")
green_onion = Ingredient.create!(name: "長ねぎ", category: "野菜")
other_vegitables = [satoimo, poteto, carrot, konnyaku, green_onion]

miso = Ingredient.create!(name: "味噌", category: "調味料")
soy = Ingredient.create!(name: "醤油", category: "調味料")
chiken_soup = Ingredient.create!(name: "コンソメスープ", category: "調味料")

miyagi    = Recipe.create!(name: "宮城風")
fukushima = Recipe.create!(name: "福島風")
yamagata  = Recipe.create!(name: "山形風")

fukushima.ingredients << [pork, mushroom, *other_vegetables, miso]
miyagi.ingredients << [pork, *other_vegetables, miso]
yamagata.ingredients << [beef, green_onion, *other_vegetables, soy]

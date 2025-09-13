pork = Ingredient.create!(name: "豚肉", category: "肉")
beef = Ingredient.create!(name: "牛肉", category: "肉")
chiken = Ingredient.create!(name: "鶏肉", category: "肉")

mashroom = Ingredient.create!(name: "きのこ", category: "野菜")
other_vegitables = [
satoimo = Ingredient.create!(name: "里芋", category: "野菜")
poteto = Ingredient.create!(name: "じゃがいも", category: "野菜")
carrot = Inredient.create!(name: "にんじん", category: "野菜")
konnyaku = Ingredient.create!(name: "こんにゃく", category: "野菜")
]
naganegi = Ingredient.create!(name: "長ねぎ", category: "野菜")

miso = Ingredient.create!(name: "味噌", category: "調味料")
syouyu = Ingredient.create!(name: "醤油", category: "調味料")
chiken_soup = Ingredient.create!(name: "コンソメスープ", category: "調味料")

miyagi    = Recipe.create!(name: "宮城風")
fukushima = Recipe.create!(name: "福島風")
yamagata  = Recipe.create!(name: "山形風")

fukushima.ingredients << [pork, mushroom, miso]
miyagi.ingredients << [pork, *other_vegetables, miso]
yamagata.ingredients << [beef, green_onion, soy]


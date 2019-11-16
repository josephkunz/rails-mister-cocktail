# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding started..."

Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

puts "Destroyed all doses, cocktails and ingredients."
# ingredients
i1 = Ingredient.create(name: "Gin")
i2 = Ingredient.create(name: "Vodka")
i3 = Ingredient.create(name: "Rum")
i4 = Ingredient.create(name: "Tequila")
i5 = Ingredient.create(name: "Bourbon")
i6 = Ingredient.create(name: "Blended Scotch whisky")
i7 = Ingredient.create(name: "Brandy")
i8 = Ingredient.create(name: "lemon")
i9 = Ingredient.create(name: "ice")
i10 = Ingredient.create(name: "mint leaves")
i11 = Ingredient.create(name: "Sugar")
i12 = Ingredient.create(name: "Syrup")
i13 = Ingredient.create(name: "Tonic")
# cocktails
c1 = Cocktail.create(name: "Gin Tonic")

d1 = Dose.create(description: "one large shot of Gin", cocktail: c1, ingredient: i4)
d2 = Dose.create(description: "add some tonic water", cocktail: c1, ingredient: i8)

puts "Added some stuff..."
puts "Seeding completed!!!"

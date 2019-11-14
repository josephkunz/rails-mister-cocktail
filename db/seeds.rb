# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ingredients
i1 = Ingredient.create(name: "lemon")
i2 = Ingredient.create(name: "ice")
i3 = Ingredient.create(name: "mint leaves")
i4 = Ingredient.create(name: "Gin")
i5 = Ingredient.create(name: "Vodka")
i6 = Ingredient.create(name: "Sugar")
i7 = Ingredient.create(name: "Syrup")
i8 = Ingredient.create(name: "Tonic")


# cocktails
c1 = Cocktail.create(name: "Gin Tonic")


Dose.create(description: "50 ml", cocktail: c1, ingredient: i4)

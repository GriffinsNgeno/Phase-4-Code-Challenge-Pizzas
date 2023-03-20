# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🍕Seeding..."
r1 = Restaurant.create(name: 'Sottocasa NYC', address: '298 Atlantic Ave, Brooklyn, NY 11201')
r2 = Restaurant.create(name: 'PizzArte', address: '69 W 55th St, New York, NY 10019')

p1 = Pizza.create(name: 'Cheese', ingridients: 'Dough, Tomato Sauce, Cheese')
p2 = Pizza.create(name: 'Pepperoni', ingridients: 'Dough, Tomato Sauce, Cheese, Pepperoni')

r1.restaurant_pizzas.create(price: 10, pizza: p1)
r1.restaurant_pizzas.create(price: 12, pizza: p2)
r2.restaurant_pizzas.create(price: 15, pizza: p1)
puts "🍕Done Seeding..."
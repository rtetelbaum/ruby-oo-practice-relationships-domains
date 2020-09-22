require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ingredient1 = Ingredient.new("chocolate syrup", 200.0)
ingredient2 = Ingredient.new("chocolate chips", 100.0)
ingredient3 = Ingredient.new("chocolate frosting", 150.0)
ingredient4 = Ingredient.new("dough", 300.0)

bakery1 = Bakery.new("Roman's Bakery")
bakery2 = Bakery.new("Bob's Bakery")
bakery3 = Bakery.new("Fran's Bakery")
bakery4 = Bakery.new("Laura's Bakery")

dessert1 = Dessert.new("Choco Drip", bakery1)
dessert2 = Dessert.new("Choco Cookie", bakery2)
dessert3 = Dessert.new("Choco Cake", bakery3)
dessert4 = Dessert.new("Donut", bakery4)

dessert_ingredient1 = DessertIngredient.new(dessert1, ingredient1)
dessert_ingredient2 = DessertIngredient.new(dessert2, ingredient2)
dessert_ingredient3 = DessertIngredient.new(dessert3, ingredient3)
dessert_ingredient4 = DessertIngredient.new(dessert4, ingredient4)

Pry.start

# driver1 = Driver.new("Roman")
# driver2 = Driver.new("Wes")
# driver3 = Driver.new("Caryn")
# driver4 = Driver.new("Bob")

# passenger1 = Passenger.new("Charlie")
# passenger2 = Passenger.new("Sara")
# passenger3 = Passenger.new("Sam")
# passenger4 = Passenger.new("Laura")

# ride1 = Ride.new(driver1, passenger1, 30.0)
# ride2 = Ride.new(driver2, passenger2, 3.2)
# ride3 = Ride.new(driver3, passenger3, 100.2)
# ride4 = Ride.new(driver4, passenger4, 17.5)
# ride5 = Ride.new(driver4, passenger4, 17.3)
# ride6 = Ride.new(driver1, passenger2, 105.6)
# ride7 = Ride.new(driver4, passenger1, 17.5)

# Pry.start
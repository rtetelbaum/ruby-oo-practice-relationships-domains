require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Pry.start

roman_bakery = Bakery.new("Roman's Bakery")
wes_bakery = Bakery.new("Wes's Bakery")
caryn_bakery = Bakery.new("Caryn's Bakery")

choco_chips = ingredients.new("chocolate chips", 700)
flour = ingredients.new("flour", 500)
apples = ingredients.new("apples", 200)
eggs = ingredients.new("eggs", 300)
water = ingredients.new("water", 0)
frosting = ingredients.new("frosting", 400)


cookie = Dessert.new(roman_bakery, flour, eggs, water, choco_chips)
cake = Dessert.new(wes_bakery, flour, eggs, water, frosting)
apple_pie = Dessert.new(caryn_bakery, flour, eggs, water, apples)
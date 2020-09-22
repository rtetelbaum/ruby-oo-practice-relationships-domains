class Dessert
    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        dessert_ingredients = DessertIngredient.all.find_all { |di| di.dessert == self }
        dessert_ingredients.collect { |di| di.ingredient }
    end

    def calories
        cals = self.ingredients.collect { |i| i.calories }
        cals.sum
    end
end
class Bakery
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        dessert_ingredients = DessertIngredient.all.find_all { |di| di.dessert.bakery == self }
        dessert_ingredients.collect { |di| di.ingredient }
    end

    def desserts
        dessert_ingredients = DessertIngredient.all.find_all { |di| di.dessert.bakery == self }
        dessert_ingredients.collect { |di| di.dessert }
    end

    def average_calories
        cals = self.ingredients.collect { |i| i.calories }
        cals.sum / cals.size
    end

    def shopping_list
        self.ingredients.collect { |i| i.name }
    end
end
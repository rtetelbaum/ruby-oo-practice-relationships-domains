class Ingredient
    attr_accessor :name, :calories

    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert
        dessert_ingredients = DessertIngredient.find_all { |di| di.ingredient == self }
        dessert_ingredients.collect { |di| di.dessert }
    end

    def bakeries
        self.dessert.collect { |d| d.bakery }
    end

    def self.find_all_by_name(ingredient_partial)
        self.all.find_all { |ingredient| ingredient.name.include?(ingredient_partial) }
    end
end
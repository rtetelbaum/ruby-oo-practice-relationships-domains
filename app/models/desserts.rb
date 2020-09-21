class Desserts
    attr_accessor :bakery, :ingredients

    @@all = []

    def initialize(bakery, ing_1, ing_2, ing_3, ing_4, ing_5)
        @bakery = bakery
        @ingredients = ingredients
        @@all << self
    end

    
end
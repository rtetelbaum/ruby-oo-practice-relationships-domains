class Passenger
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.find_all { |ride| ride.passenger == self }
    end

    def drivers
        self.rides.collect { |ride| ride.driver }
    end

    def total_distance
        distances = self.rides.collect { |ride| ride.distance }
        distances.sum
    end

    def self.premium_members
        self.all.find_all { |passenger| passenger.total_distance > 100.0 }
    end
end
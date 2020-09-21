class Driver
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
        Ride.all.find_all { |ride| ride.driver == self }
    end

    def passengers
        self.rides.collect { |ride| ride.passenger }
    end

    def self.mileage_cap(distance)
        exceeded_rides = Ride.all.find_all { |ride| ride.distance > distance }
        exceeded_rides.collect { |ride| ride.driver }
    end
end
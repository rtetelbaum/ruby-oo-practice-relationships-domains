require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

driver1 = Driver.new("Roman")
driver2 = Driver.new("Wes")
driver3 = Driver.new("Caryn")
driver4 = Driver.new("Bob")

passenger1 = Passenger.new("Charlie")
passenger2 = Passenger.new("Sara")
passenger3 = Passenger.new("Sam")
passenger4 = Passenger.new("Laura")

ride1 = Ride.new(driver1, passenger1, 30.0)
ride2 = Ride.new(driver2, passenger2, 3.2)
ride3 = Ride.new(driver3, passenger3, 100.2)
ride4 = Ride.new(driver4, passenger4, 17.5)
ride5 = Ride.new(driver4, passenger4, 17.3)
ride6 = Ride.new(driver1, passenger2, 105.6)
ride7 = Ride.new(driver4, passenger1, 17.5)

Pry.start
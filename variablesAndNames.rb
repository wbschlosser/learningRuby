#variables
cars = 100
spaceInACar = 4.0
drivers = 30
passengers = 90
carsNotDriven = cars - drivers
carsDriven = drivers
carpoolCapacity = carsDriven * spaceInACar
avgPassengersPerCar = passengers / carsDriven

#more than just math goes in th #{}
#variables go in it too
#it's meant to input non-plain text
puts "There are #{cars} available."
puts "There are only #{drivers} available."
puts "There will be #{carsNotDriven} empty cars today."
puts "We can transport #{carpoolCapacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{avgPassengersPerCar} in each car."

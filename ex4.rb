cars = 100
space_in_a_car = 4
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

# Number of cars
puts "Theres are #{cars} cars available."
# Number of drivers
puts "There are only #{drivers} drivers available."
# Number of empty cars availble
puts "There will be #{cars_not_driven} empty cars today."
# Carpool capacity
puts "We can transport #{carpool_capacity} people today."
# How many passengers are requiring carpool services
puts "We have #{passengers} to carpool today."
# Average passengers in each car
puts "We need to put about #{average_passengers_per_car} in each car."


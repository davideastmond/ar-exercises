require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Deena", last_name: "Birani", hourly_rate: 60)

@store1.employees.create(first_name: "Freezing", last_name: "Willow", hourly_rate: 50)

@store1.employees.create(first_name: "Burram", last_name: "Jameson", hourly_rate: 60)

@store2.employees.create(first_name: "Jason", last_name: "Eirani", hourly_rate: 60)
@store2.employees.create(first_name: "Colleen", last_name: "Eirani", hourly_rate: 60)
@store2.employees.create(first_name: "Nitro", last_name: "Glyss", hourly_rate: 60)
@store2.employees.create(first_name: "Nintendo", last_name: "Switch", hourly_rate: 60)

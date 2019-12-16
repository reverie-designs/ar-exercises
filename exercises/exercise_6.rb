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
@store1.employees.create(first_name: "Roy", last_name: "McFurgeson", hourly_rate: 78)

@store2.employees.create(first_name: "Valery", last_name: "Marks", hourly_rate: 43)
@store2.employees.create(first_name: "Sam", last_name: "Trouble", hourly_rate: 35)
@store2.employees.create(first_name: "Marl", last_name: "Buller", hourly_rate: 41)
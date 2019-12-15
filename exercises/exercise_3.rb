require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
# Load the third store (into @store3) as you did the other two before.
# Using Active Record's destroy method, delete the store from the database.
# Verify that the store has been deleted by again outputting (putsing) the count (as you did in Exercise 1.)
@store = Store.find_by(id: 3)

# @store.delete
@store.destroy

puts "The amount of stores in the table are: #{Store.count}"
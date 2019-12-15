require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# # Your code goes here ...
# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)

store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts "The amount of stores in the table are: #{Store.count}"
# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
# Loop through each of these stores and output their name and annual revenue on each line.
# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.find_each do |store|
  puts "#{store.name} sells men's apparael and has #{store.annual_revenue} in annual revenue."
end 

@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

# @womens_stores.find_each do |store|
#   puts "#{store.name} sells women's apparael and has #{store.annual_revenue} in annual revenue."
# end 

require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Load the first store (with id = 1) from the database and assign it to an instance 

total_revenue = Store.sum(:annual_revenue)
puts total_revenue

average_revenue = Store.average(:annual_revenue)
puts average_revenue

million_dollar_stores = Store.where("annual_revenue >= 1000000").count
puts "#{million_dollar_stores} stores are generating $1M or more in annual sales."

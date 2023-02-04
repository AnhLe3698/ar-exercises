require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
@store1 = Store.find(1)
puts "--------- #{@store1}-------"
# Load the second store from the database and assign it to @store2.
@store2 = Store.find(2)
puts "--------- #{@store1}-------"

# Update the first store (@store1) instance in the database. (Change its name or something.)
@store1.name = "New Name for Store 1"
puts "--------- #{@store1}-------"
@store1.save
puts "--------- #{@store1}-------"

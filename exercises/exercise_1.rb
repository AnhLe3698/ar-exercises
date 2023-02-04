require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
begin
  ActiveRecord::Schema.define do
    create_table :stores do |t|
      t.string :name
      t.integer :annual_revenue
      t.string :mens_apparel
      t.string :womens_apparel
    end
  end
rescue ActiveRecord::StatementInvalid
  # Table already exists, do nothing
end

class Store < ActiveRecord::Base
end

# Create 3 stores
Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: 'yes', womens_apparel: 'yes')
Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: 'no', womens_apparel: 'yes')
Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: 'yes', womens_apparel: 'no')

# Output the number of stores
puts Store.count
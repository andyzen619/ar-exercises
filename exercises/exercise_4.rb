require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(
  name: "Surrey", 
  annual_revenue: 224000, 
  womens_apparel: true,
  mens_apparel: false
)
Store.create(
  name: "Whistler", 
  annual_revenue: 1900000, 
  womens_apparel: false,
  mens_apparel: true
)

Store.create(
  name: "Yaletown", 
  annual_revenue: 430000, 
  womens_apparel: true,
  mens_apparel: true
)

puts Store.count

(1..Store.count).map{|store_id| @current = Store.find_by(id: store_id) 
if @current
  puts "#{@current.name}, #{@current.annual_revenue}"
end
}

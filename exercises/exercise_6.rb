require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store4 = Store.find_by(id: 4)
@store5 = Store.find_by(id: 5)
@store6 = Store.find_by(id: 6)
# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Andy", last_name: "Liang", hourly_rate: 30)
@store2.employees.create(first_name: "Linda", last_name: "Hua", hourly_rate: 600)
@store2.employees.create(first_name: "Jacklyn", last_name: "Marrow", hourly_rate: 10)
@store2.employees.create(first_name: "Tanya", last_name: "Gohort", hourly_rate: 37)
@store4.employees.create(first_name: "Tom", last_name: "Gastly", hourly_rate: 69)
@store4.employees.create(first_name: "Jill", last_name: "Racks", hourly_rate: 89)
@store5.employees.create(first_name: "Lebron", last_name: "James", hourly_rate: 600000)
@store6.employees.create(first_name: "Kobe", last_name: "Bryant", hourly_rate: 909)
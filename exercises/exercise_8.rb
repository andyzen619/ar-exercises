require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

employee = @store1.employees.create(first_name: "KKK", last_name: "My man", hourly_rate: 41)

puts employee.password
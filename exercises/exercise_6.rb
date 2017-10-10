require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create([
                        {first_name: "Dandy", last_name: "You", hourly_rate: 60},
                        {first_name: "Darby", last_name: "Snoo", hourly_rate: 40},
                        {first_name: "Hardy", last_name: "Floo", hourly_rate: 40},
                        {first_name: "Shun", last_name: "Too", hourly_rate: 40}
                        ])


@store2.employees.create([
                        {first_name: "Mandy", last_name: "Goo", hourly_rate: 60},
                        {first_name: "Hanby", last_name: "Choo", hourly_rate: 40},
                        {first_name: "Tandy", last_name: "Roo", hourly_rate: 40},
                        {first_name: "Shandy", last_name: "Sloo", hourly_rate: 40}
                        ])
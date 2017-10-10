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
                        {first_name: "Darby", last_name: "Snoo", hourly_rate: 20},
                        {first_name: "Hardy", last_name: "Floo", hourly_rate: 35},
                        {first_name: "Shun", last_name: "Too", hourly_rate: 34}
                        ])


@store2.employees.create([
                        {first_name: "Mandy", last_name: "Goo", hourly_rate: 60},
                        {first_name: "Hanby", last_name: "Choo", hourly_rate: 20},
                        {first_name: "Tandy", last_name: "Roo", hourly_rate: 35},
                        {first_name: "Shandy", last_name: "Sloo", hourly_rate: 34}
                        ])

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create 
    # (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` 
    # (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.
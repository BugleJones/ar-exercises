require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

new_emp = @store1.employees.create first_name: "Reginald", last_name: "Gemma", hourly_rate: 60

p new_emp

# if new_employee.valid?
#     new_employee.save
# else
#     puts new_employee.errors.full_messages
# end


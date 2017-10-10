require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

all_stores = Store.all
@all_revenue = all_stores.sum(:annual_revenue)
@avg_revenue = all_stores.average(:annual_revenue)
@all_1M_stores = all_stores.where("annual_revenue > 1000000").count

puts "Our total annual revenue is #{@all_revenue}"
puts "Our average annual revenue is #{@avg_revenue}"
puts "Our high performing stores are #{@all_1M_stores}"


# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.
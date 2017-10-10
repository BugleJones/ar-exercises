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

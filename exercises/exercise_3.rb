require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

@store3 = Store.find(3)

@store3.destroy

all_stores = Store.all

puts "We have #{all_stores.count} stores"


# 1. Load the third store (into `@store3`) as you did the other two before.
# 2. Using Active Record's `destroy` method, delete the store from the database.
# 3. Verify that the store has been deleted by again outputting (`puts`ing) the `count` (as you did in Exercise 1.)
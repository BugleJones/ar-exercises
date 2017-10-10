require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

p "Please provide a store name"

@choice = gets.chomp

new_store = Store.new name: "#{@choice}"

p new_store

if new_store.valid?
    new_store.save
else
    puts new_store.errors.full_messages
end

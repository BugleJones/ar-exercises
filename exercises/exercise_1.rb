require_relative '../setup'

puts "Exercise 1"
puts "----------"

burb_store = Store.create name: "Burnaby", annual_revenue: 30000, mens_apparel: true, womens_apparel: true
rich_store = Store.create name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true
gas_store = Store.create name: "Gastown", annual_revenue: 190000,  mens_apparel: false, womens_apparel: false

all_stores = Store.all

puts "We have #{all_stores.count} stores"
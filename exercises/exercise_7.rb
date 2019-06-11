require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter a store name"
@store_name = gets.chomp

@newStore = Store.create(:name => @store_name, :annual_revenue => 500000, :mens_apparel => true)

@newStore.errors.each do |k, v|
  puts "Error: #{k} #{v}"
end



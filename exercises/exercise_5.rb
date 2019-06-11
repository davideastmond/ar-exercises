require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total revenue is #{Store.sum("annual_revenue")}"
puts "Average revenue is #{Store.average("annual_revenue")}"
puts "Count of stores making more than 1M is #{Store.where("annual_revenue > 1000000").count}"
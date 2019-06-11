require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(:name => 'Surrey', :annual_revenue => 224000, :womens_apparel=> true, :mens_apparel => false)
Store.create(:name => 'Whistler', :annual_revenue => 1900000, :womens_apparel=> false, :mens_apparel => true)
Store.create(:name => 'Yaletown', :annual_revenue => 430000, :womens_apparel=> true, :mens_apparel => true)

@mens_stores = Store.where(:mens_apparel => true)

@mens_stores.each do |el|
  puts "#{el.name} #{el.annual_revenue}"
end

@w_stores = Store.where("womens_apparel = true and annual_revenue < 1000000")

@w_stores.each do |n|
  puts "#{n.name} #{n.annual_revenue}"
end
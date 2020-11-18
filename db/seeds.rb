# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Create 10 restaurants..."

10.times do 
  name = Faker::Restaurant.name
  address = Faker::Address.city
  phone = Faker::PhoneNumber.phone_number_with_country_code
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.create!(name: name, address: address, phone_number: phone, category: category)
end

puts "Done"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Flat.destroy_all

5.times do
  puts "creating flat"
  flat = Flat.create!(
    name: Faker::Lorem.word,
    address: Faker::Address.street_name,
    description: Faker::Lorem.paragraphs,
    price_per_night: rand(30..300),
    number_of_guests: rand(1..6)
  )
  puts "finished creating #{flat.id} flat"
end

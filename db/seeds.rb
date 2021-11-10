# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "00", category: "chinese" }
fcafe =  { name: "Francky Vincent Café", address: "Quelque part à Thiais", phone_number: "00", category: "french" }
jojo =  { name: "Jojo Café", address: "Duwang", phone_number: "00", category: "italian" }
bjr =  { name: "Overcooked Bar", address: "Le PS Store", phone_number: "00", category: "french" }
couscous =  { name: "Le bon gros couscous", address: "Couscousland", phone_number: "00", category: "french" }


[ dishoom, fcafe, jojo, bjr, couscous ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+33567897353", category: "japanese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+237755377", category: "belgian"}
chez_maman = { name: "Chez Maman", address: "125 boulevard Flammarion, Marseille", phone_number: "+24566677", category: "french" }
mie_caline = { name: "Mie Caline", address: "Vieux Port, Marseille", phone_number: "+2378888377", category: "italian" }
la_maison = { name: "La Maison", address: "Tour Eiffel, Paris", phone_number: "+22333997", category: "chinese" }

[dishoom, pizza_east, chez_maman, mie_caline, la_maison].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

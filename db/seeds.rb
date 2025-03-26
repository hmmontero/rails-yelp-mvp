# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Sushi Kolor", address: "Gran Av 885", phone_number: "+56912345678", category: "japanese")
puts "Sushi Kolor"

Restaurant.create!(name: "Pizza Italita", address: "Vecinal sur 1456", phone_number: "+56987654132", category: "italian")
puts "Pizza Italita"

Restaurant.create!(name: "Le Bistro", address: "789 Paris Rd", phone_number: "789-012", category: "french")
puts "Le Bistro"

Restaurant.create!(name: "Dragon Wok", address: "321 Beijing Ln", phone_number: "321-654", category: "chinese")
puts "Dragon Wok"

Restaurant.create!(name: "Belgian Waffles", address: "654 Brussels St", phone_number: "654-987", category: "belgian")
puts "Belgian Waffles"


puts "Finished! Created #{Restaurant.count} restaurants."

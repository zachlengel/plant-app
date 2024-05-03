# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Plant.create!(
  {
  name: "Balloon Flower", description: "A unique flowering plant. The flower bud will inflate as it grows before opening.", amount_of_sun: 6, days_to_water: 5, image_url: "https://m.media-amazon.com/images/I/91dpDhWNg1L.jpg"
})
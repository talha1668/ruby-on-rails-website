# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Properties = Property.create(
    {
        name: "name",
        description: " properties for the demo",
        healine: "Production properties for the headline",
        address_1: "address_1 ",
        address_2: "address_2 ",
        city: "Lahore",
        country: "Pakistan",

    }
)
20.times do 
    Property.create(
        {
            name: Faker::Lorem.word,
            description: Faker::Lorem.sentence,
            healine: Faker::Lorem.sentence,

            address_1: Faker::Address.street_address,
            address_2: Faker::Address.secondary_address,
            city: Faker::Address.city,
            country: Faker::Address.country,
            price: Money.from_amount(50,"PKR")
        }
    )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "faker"
Garage.destroy_all


# user = User.create(username: "val", email: "hello@leo.com", password: "123456")

adresses = ["Chaussée de boitsfort 140, Bruxelles", "Avenue Baron d'huart 35, Bruxelles", "Rue du merlo 200, Uccle", "becentral", "Chaussée de Malines 302, Bruxelles", "Avenue de tervuren 300, Bruxelles"]

5.times do
  garage = Garage.new(
    name: Faker::Name.name,
    address: adresses.sample,
    specialty: Faker::Vehicle.manufacture,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  garage.save
end

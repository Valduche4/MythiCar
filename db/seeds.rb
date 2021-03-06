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
User.destroy_all
Car.destroy_all
Event.destroy_all

# user = User.create(username: "val", email: "hello@leo.com", password: "123456")

user = User.new(email: "hello@leo.com", password: "123456")
user.photo.attach(io: (URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoS96_vETK55r95MRsFeB2f7T3S6W6UCsElsdeeOwljS2Ugdwyfo8w4FLzrmFF6VpdkUk&usqp=CAU")), filename: 'file.jpeg')
user.save!

car1 = Car.new(
  user: user,
  brand: "Porsche",
  model: "911",
  year: 1970,
  plate: "O-POR-342"
)
car1.photo.attach(io: File.open(URI.open("https://cdn.elferspot.com/wp-content/uploads/2018/12/ViRo-911-orange-27-2000x1334.jpg")), filename: 'file.jpeg')
car1.save!

car2 = Car.new(
  user: user,
  brand: "Jaguar",
  model: "E-type",
  year: 1978,
  plate: "O-JAG-007"
)
car2.photo.attach(io: File.open(URI.open("https://www.topgear.com/sites/default/files/images/news-article/carousel/2021/03/4e631faa5da311f06eb2beec9c618731/1.jpg")), filename: 'file.jpeg')
car2.save!

car3 = Car.new(
  user: user,
  brand: "Ferrari",
  model: "Dino",
  year: 1973,
  plate: "O-FER-939"
)
car3.photo.attach(io: File.open(URI.open("http://www.quartamarcia.it/wp-content/uploads/2015/06/ferrari_dino_1971_1.jpg")), filename: 'file.jpeg')
car3.save!

car4 = Car.new(
  user: user,
  brand: "Lamborghini",
  model: "Miura",
  year: "1967",
  plate: "O-LAM-321"
)
car4.photo.attach(io: File.open(URI.open("https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/news/2021/04_14_miura/miura_cover.jpg")), filename: 'file.jpeg')
car4.save!

user2 = User.create(email: "bg@bg.com", password: "123456")
user2.photo.attach(io: (URI.open("https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/news/2021/04_14_miura/miura_cover.jpg")), filename: 'file.jpeg')
user2.save!

event1 = Event.new(
  name: "GoodWood",
  address: "Chauss??e de boitsfort 140, Bruxelles",
  description: "Goodwood is a unique sporting Estate set in 12,000 acres of beautiful South Downs countryside. Owned by the Dukes of Richmond since 1697, it is has become famous for three of the biggest events in the social and sporting calendar: the Festival of Speed, the Qatar Goodwood Festival and Goodwood Revival.",
  start_date: Faker::Date.between(from: '2022-06-12', to: '2022-08-10'),
  user: user2
)
event1.photo.attach(io: File.open(URI.open("https://www.goodwood.com/globalassets/motorsport/revival/2018-racing/alex-benwell-best-photos/31-revival2018_jaysonfong_0080.jpg?crop=(0,1039,4928,3014)&width=2600")), filename: 'file.jpeg')
event1.save!

event2 = Event.new(
  name: "Festival of Speed",
  address: "Avenue Baron d'huart 35, Bruxelles",
  description: "Held in the beautiful parkland surrounding Goodwood House, the Festival of Speed presented by Mastercard is motorsport's ultimate summer garden party, an intoxicating celebration of the world's most glamorous sport. Nowhere else will you get so close to the cars and bikes as they blast up the Hillclimb track; nowhere else will you enjoy such unrestricted access to the machines and the drivers who made them famous.",
  start_date: Faker::Date.between(from: '2022-06-12', to: '2022-08-10'),
  user: user2
)
event2.photo.attach(io: File.open(URI.open("https://www.goodwood.com/globalassets/motorsport/mm/72mm_14_dominicjames_3148.jpg?crop=(0,1138,5760,3446)&width=1300")), filename: 'file.jpeg')
event2.save!

event3 = Event.new(
  name: "Goodwood Revival",
  address: "Rue du merlo 200, Uccle",
  description: "The smell of engines mingles with the roar of iconic race cars at Goodwood Revival, a three-day September festival celebrating the halcyon days of motor racing with the accompanying glamour of 1940s, ???50s and ???60s.",
  start_date: Faker::Date.between(from: '2022-06-12', to: '2022-08-10'),
  user: user2
)
event3.photo.attach(io: File.open(URI.open("https://www.goodwood.com/globalassets/motorsport/revival/revival_14_drewgibson_0263.jpg?crop=(0,873,5278,2988)&width=1300")), filename: 'file.jpeg')
event3.save!

event4 = Event.new(
  name: "Night ride in london",
  address: "Chauss??e de Malines 302, Bruxelles",
  description: "The world???s greatest historic motor race meeting, and the only sporting event of its kind to be staged entirely in a period theme. More than just an unrivalled weekend of historic racing, it is a whimsical step back in time; an immersive celebration of a less disposable world, where ???make do and mend??? was a way of life rather than a casual slogan.",
  start_date: Faker::Date.between(from: '2022-06-12', to: '2022-08-10'),
  user: user2
)
event4.photo.attach(io: File.open(URI.open("https://www.goodwood.com/globalassets/motorsport/revival/2018-racing/alex-benwell-best-photos/10-revival2018_jaysonfong_0032.jpg?crop=(0,259,4928,3031)&width=1240")), filename: 'file.jpeg')
event4.save!

event5 = Event.new(
  name: "Classic films with classic cars",
  address: "Avenue de tervuren 300, Bruxelles",
  description: "Viewers usually sit on camping chairs or blankets, but it will be our classic old cars for us. Some Hollywood world premieres were screened in outdoor cinemas ??? sometimes with the stars in attendance. Most screenings are free with some raising money for charities.",
  start_date: Faker::Date.between(from: '2022-06-12', to: '2022-08-10'),
  user: user2
)
event5.photo.attach(io: File.open(URI.open("https://www.goodwood.com/globalassets/motorsport/revival/2021/highlights-updates/untitled.png?crop=(0,139,1334,889)&width=1240")), filename: 'file.jpeg')
event5.save!


garage1 = Garage.new(
  name: "Classic 42",
  address: "Av. G??n??ral M??decin Derache 122, 1050 Ixelles",
  specialty: "Sportive car",
  phone_number: 024756373
)
garage1.save!

garage2 = Garage.new(
  name: "Garage Buckens",
  address: "Rue Goffart 63, 1050 Ixelles",
  specialty: "Porsche",
  phone_number: 024747373
)
garage2.save!

garage3 = Garage.new(
  name: "Mekabox",
  address: "Chauss??e de boitsfort 140, Bruxelles",
  specialty: "MG",
  phone_number: 0437263023
)
garage3.save!

garage4 = Garage.new(
  name: "L'Atr??ac Motors",
  address: "Rue des Palmiers 75, 1150 Woluwe-Saint-Pierre",
  specialty: "Aston Martin",
  phone_number: 024323344
)
garage4.save!

garage5 = Garage.new(
  name: "Lekeux Classic Cars",
  address: "Chauss??e de Roodebeek 15, 1200 Woluwe-Saint-Lambert",
  specialty: "Jaguar & Land rover",
  phone_number: 023436374
)
garage5.save!

50.times do
  participation = Participation.new(
    user: user2,
    event: event1
  )
  participation.save!
end

73.times do
  participation = Participation.new(
    user: user2,
    event: event2
  )
  participation.save!
end

23.times do
  participation = Participation.new(
    user: user2,
    event: event3
  )
  participation.save!
end

12.times do
  participation = Participation.new(
    user: user2,
    event: event4
  )
  participation.save!
end

132.times do
  participation = Participation.new(
    user: user2,
    event: event5
  )
  participation.save!
end

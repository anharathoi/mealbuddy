# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
addresses = [
  "Bennelong Point, Sydney, NSW, 2000",
  "48 Pirrama Rd, Pyrmont, NSW, 2009",
  "L4/180 Albert Rd, South Melbourne, VIC, 3205",
  "2/117 Capel St, North Melbourne, VIC, 3051",
  "1/187 Thomas St, Haymarket, NSW, 2000",
  "15 Moore St, Canberra, ACT, 2601",
  "1600 Amphitheatre Pkwy, Mountain View, CA, 94043, USA",
  "161 Collins St, Melbourne, VIC, 3000",
  "1 Hacker Way, Menlo Park, CA, 94025, USA",
  "121 King St, Melbourne, VIC, 3000"
]
5.times do 
  # address = Faker::Address.full_address.split(", ")
  address = addresses[rand(11)].split(", ")
  user = User.create!(
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      phone: Faker::PhoneNumber.cell_phone,
      email: Faker::Internet.email,
      password: "123456",
      street: address[0],
      city:address[1],
      state:address[2],
      postcode:address[3],
      country: address[4].nil? ? "Australia" : address[4]
    }
  )

  meal = user.meals.create!(
    {
      title: Faker::Food.dish,
      description: Faker::Food.description,
      price: (rand(1..25).to_f * 100.0),
      quantity: Faker::Number.between(1, 100)
    }
  )

  meal.image.attach(
    {
    io: File.open('db/sample_images/lasagne.jpg'),
    filename: 'lasagne.jpeg'
    }
  )
end



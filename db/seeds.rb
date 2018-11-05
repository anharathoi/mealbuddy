# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do 
  address = Faker::Address.full_address.split(", ")
  user = User.create!(
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      phone: Faker::PhoneNumber.cell_phone,
      email: Faker::Internet.email,
      password: "123456",
      street: address[0],
      city:address[1],
      state:address[2][0..1],
      postcode:address[2][3..-1],
      country: "USA"
    }
  )

  meal = user.meals.create!(
    {
      title: Faker::Food.dish,
      description: Faker::Food.description,
      price: (rand(25).to_f * 100.0),
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

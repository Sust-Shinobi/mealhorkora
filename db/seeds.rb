# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Example User",
    email: "example@railstutorial.org",
    password:              "password",
    password_confirmation: "password",
    city: "Example City",
    profession: "Example Job",
    address: "Example Address",
    phone_no: "0151515151",
    religion: "Example Religion",
    superuser: true)

99.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
password = "password"
birthday = Faker::Date.birthday
city = Faker::Book.title
profession = Faker::Job.title
phone_no = Faker::PhoneNumber.phone_number
address = Faker::Address.street_address
religion = "Religion"
User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password,
      date_of_birth: birthday,
      city: city,
      profession: profession,
      phone_no: phone_no,
      address: address,
      religion: religion,
      takes_lunch: true,
      takes_dinner: true )
end

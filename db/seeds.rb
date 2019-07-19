# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Koushik Sarkar Seemanto",
    email: "koushik@gmail.com",
    password:              "password",
    password_confirmation: "password",
    city: "Bogra",
    profession: "Works at Student",
    address: "Lakecity, Neharipara, Sylhet",
    phone_no: "01843405088",
    religion: "Hindu",
    superuser: true)

10.times do |n|
name  = Faker::Name.name
email = "test-#{n+1}@gmail.com"
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

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Koushik Sarkar Seemanto",
             balance: 0,
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
      balance: 0,
      takes_dinner: true )
end

LunchMeal.create!(items: "Rice, Daal, Fish, Vegetable ",cost: 40)
LunchMeal.create!(items: "Rice, Daal, Chicken, Vegetable ",cost: 40)
LunchMeal.create!(items: "Rice, Daal, Egg, Vegetable ",cost: 40)
LunchMeal.create!(items: "Special Meal@70tk", cost: 70)

(2018..2018).each do |year|
    (1..12).each do |month|
        month = Date::MONTHNAMES[month]
        (1..5).each do |day|
            day = rand(1..30)
            user_id = rand(1..10)
            Lunch.create!(
                user_id: user_id,
                year: year,
                month: month,
                day: day,
                lunch_meal_id: day%4+1
            )
        end
    end
end

DinnerMeal.create!(items: "Rice, Daal, Fish, Vegetable ", cost: 40)
DinnerMeal.create!(items: "Rice, Daal, Chicken, Vegetable ", cost: 40)
DinnerMeal.create!(items: "Rice, Daal, Egg, Vegetable ", cost: 40)
DinnerMeal.create!(items: "Special Meal@70tk",cost: 70)

(2018..2018).each do |year|
  (1..12).each do |month|
    month = Date::MONTHNAMES[month]
    (1..5).each do |day|
      day = rand(1..30)
      user_id = rand(1..10)
      Dinner.create!(
          user_id: user_id,
          year: year,
          month: month,
          day: day,
          dinner_meal_id: day%4+1
      )
    end
  end
end


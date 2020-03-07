require 'faker'

100.times do
  Customer.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    street_address: Faker::Address.street_address,
    city_address: Faker::Address.city,
    state_address: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip,
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 70)
  )

end
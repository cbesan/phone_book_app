# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

256.times do
   company = Company.new(name: Faker::Company.name, state: Faker::Address.state)
  if company.save
    SecureRandom.random_number(32).times do
      company.employees.create(first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.phone_number)
    end
  end
end
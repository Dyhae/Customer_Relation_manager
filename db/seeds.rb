# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

Customer.destroy_all

# NUMBER_OF_PEOPLE = 5

# NUMBER_OF_PEOPLE.times do
#   customer = Customer.create(
#     name: Faker::Name.name,
#     surname: Faker::Name.last_name,
#     phone_number: Faker::PhoneNumber.phone_number,
#     email: Faker::Internet.email,
#     notes: Faker::Quotes::Shakespeare.romeo_and_juliet_quote
#   )

#   customer.save
# end
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

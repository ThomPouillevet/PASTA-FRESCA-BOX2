# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all

puts 'Creating test user...'

user = User.new(
  email: "test@test.com",
  password: 'azerty',
  name: 'Thom',
  address: '53 cours Vitton Lyon',
  phone_number: '0456743456')
user.save!

puts 'Finished!'

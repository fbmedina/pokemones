# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Pokemon.destroy_all

ash = User.create!(name: "Ash", email: "ash@mail.com", password: "password", role: 1)
red = User.create!(name: "Red", email: "red@mail.com", password: "password", role: 2)

ratata = Pokemon.create!(name: "Ratata", description: "Hola soy Ratata")
caterpie = Pokemon.create!(name: "Caterpie", description: "Hola soy Caterpie")

2.times do
  PokeUser.create!(pokemon: ratata, user: ash)
end

PokeUser.create!(pokemon: caterpie, user: ash)
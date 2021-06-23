# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all
Need.destroy_all
Donation.destroy_all

puts "Model Destroy"
maxence = User.create!(first_name: "Maxence", last_name: "Laplante", email: "maxence.laplante@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
resto = Event.create!(name: "Action contre la fin", description: "Pour aider les personnes en difficulté nous faisons une récolte de vêtement !", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Humanitaire") 
Whishlist =  WhishlistEvent.create!(user: maxence, event: resto)

puts "event user created"
food = Need.create!(category: "Food", name: "Food", quantity: 5, event: resto)

puts "donation"
donation = Donation.create!(quantity: 10, user: maxence, need: food)
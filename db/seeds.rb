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


maxence = User.create!(first_name: "Maxence", last_name: "Laplante", email: "maxence.laplante@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
alan= User.create!(first_name: "Alan", last_name: "Dupre", email: "alan.dupre@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
adrien = User.create!(first_name: "Adrien", last_name: "Marceau", email: "adrien.marceau@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
alexis = User.create!(first_name: "Alexis", last_name: "Bouchiouane", email: "alexis.bouchiouane@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
jp = User.create!(first_name: "JP", last_name: "Morgan", email: "jp.morgan@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")

clothing = Event.create!(name: "Recolte de Vétements", description: "Donnez vos vêtements pour aider les démunis!", address: "142 rue de beaumont", CP: "59100", city: "Roubaix", category: "Humanitaire", name_asso: "Clothing Family") 
solidarity = Event.create!(name: "Aider les plus démunis", description: "Maraude de prévue pour venir en aide au plus démunis", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Alimentaire", name_asso: "Solidarity") 
environment = Event.create!(name: "Action contre la fin", description: "On ramasse les déchets près de chez vous ! ", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Environement", name_asso: "Easy Cleaning") 
cultural = Event.create!(name: "L'éducation pour tous", description: "Des enfants déscolarisés ! Des professeurs pour les accompagner", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Culture", name_asso: "Kids Education") 
student = Event.create!(name: "Aides aux Etudiants", description: "Les étudiants sont en difficultés ! Un petit geste pour leur venir en aide !", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Alimentaire", name_asso: "Student Helper") 
women = Event.create!(name: "Aides aux femmes", description: "Venez en aides aux femmes maltraitées", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Humanitaire", name_asso: "Stop Violence") 

Whishlist =  WhishlistEvent.create!(user: maxence, event: clothing)
# Whishlist =  WhishlistEvent.create!(user: alan, event: solidarity)
# Whishlist =  WhishlistEvent.create!(user: adrien, event: environment)
# Whishlist =  WhishlistEvent.create!(user: alexis, event: cultural)
# Whishlist =  WhishlistEvent.create!(user: jp, event: women)


food = Need.create!(category: "Food", name: "Food", quantity: 5, event: clothing)

donation = Donation.create!(quantity: 10, user: maxence, need: food)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Need.destroy_all
Donation.destroy_all
Event.destroy_all
User.destroy_all


maxence = User.create!(first_name: "Maxence", last_name: "Laplante", email: "maxence.laplante@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
alan= User.create!(first_name: "Alan", last_name: "Dupre", email: "alan.dupre@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
adrien = User.create!(first_name: "Adrien", last_name: "Marceau", email: "adrien.marceau@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
alexis = User.create!(first_name: "Alexis", last_name: "Bouchiouane", email: "alexis.bouchiouane@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
jp = User.create!(first_name: "JP", last_name: "Morgan", email: "jp.morgan@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")

clothing = Event.create!(name: "Recolte de Vétements", description: "Donnez vos vêtements pour aider les démunis!", address: "142 rue de beaumont", CP: "59100", city: "Roubaix", category: "Solidarity", name_asso: "Clothing Family", user: alan, cover_pic: "https://www.lenouveleconomiste.fr/wp-content/uploads/2018/06/location-826x459.jpg") 
solidarity = Event.create!(name: "Aider les plus démunis", description: "Maraude de prévue pour venir en aide au plus démunis", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Alimentation", name_asso: "Solidarity", user: maxence, cover_pic: "https://www.projectboldlife.com/images/2018/09/local-food-kitchen-internal-2-1024x682.jpg") 
environment = Event.create!(name: "Nettoyer près de Chez vous !", description: "On ramasse les déchets près de chez vous ! ", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Environment", name_asso: "Easy Cleaning", user: jp, cover_pic: "https://ecoquartierpetermcgill.org/wp-content/uploads/2017/05/corvees-1000x400.jpg") 
cultural = Event.create!(name: "L'éducation pour tous", description: "Des enfants déscolarisés ! Des professeurs pour les accompagner", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Cultural", name_asso: "Kids Education", user: alan, cover_pic: "https://www.enfantsprecoces.info/wp-content/uploads/bb-plugin/cache/enfants-heureux-ecole-panorama.jpg") 
student = Event.create!(name: "Aides aux Etudiants", description: "Les étudiants sont en difficultés ! Un petit geste pour leur venir en aide !", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Alimentation", name_asso: "Student Helper", user:  alan, cover_pic: "http://www.provenceducation.com/wp-content/uploads/2017/07/residence-etudiante-etudiants1.jpg") 
women = Event.create!(name: "Aides aux femmes", description: "Venez en aides aux femmes maltraitées", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Solidarity", name_asso: "Stop Violence", user: adrien, cover_pic: "https://www.univ-lille.fr/fileadmin/user_upload/illustrations/actualites/2018/Universit%C3%A9_citoyenne/Journee-droits-femmes-1170x585px.jpg") 

Whishlist =  WhishlistEvent.create!(user: maxence, event: clothing)
# Whishlist =  WhishlistEvent.create!(user: alan, event: solidarity)
# Whishlist =  WhishlistEvent.create!(user: adrien, event: environment)
# Whishlist =  WhishlistEvent.create!(user: alexis, event: cultural)
# Whishlist =  WhishlistEvent.create!(user: jp, event: women)


food = Need.create!(category: "Food", name: "Sandwich", quantity: 5, event: clothing)

donation = Donation.create!(quantity: 10, user: maxence, need: food)
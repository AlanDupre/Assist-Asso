# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "clean database"
Need.destroy_all
Donation.destroy_all
Event.destroy_all
User.destroy_all

puts "creating users"

maxence = User.create!(first_name: "Maxence", last_name: "Laplante", email: "maxence.laplante@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
alan= User.create!(first_name: "Alan", last_name: "Dupre", email: "alan.dupre@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
adrien = User.create!(first_name: "Adrien", last_name: "Marceau", email: "adrien.marceau@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
alexis = User.create!(first_name: "Alexis", last_name: "Bouchiouane", email: "alexis.bouchiouane@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")
jp = User.create!(first_name: "JP", last_name: "Morgan", email: "jp.morgan@email.com", password: "azerty", address: "142 rue de beaumont", CP: "59100", city: "Lille", avatar: "")

puts "create events"

clothing = Event.create!(name: "Recolte de Vétements", description: "Donnez vos vêtements pour aider les démunis!", address: "26 rue de béthune", CP: "59000", city: "Lille", category: "Solidarity", name_asso: "Clothing Family", user: alan, cover_pic: "https://www.lenouveleconomiste.fr/wp-content/uploads/2018/06/location-826x459.jpg") 
solidarity = Event.create!(name: "Aider les plus démunis", description: "Maraude de prévue pour venir en aide au plus démunis", address: "45 Rue Léon Gambetta", CP: "59000", city: "Lille", category: "Alimentation", name_asso: "Solidarity", user: maxence, cover_pic: "https://www.projectboldlife.com/images/2018/09/local-food-kitchen-internal-2-1024x682.jpg") 
environment = Event.create!(name: "Nettoyer près de Chez vous !", description: "On ramasse les déchets près de chez vous ! ", address: "65 rue esquermoise", CP: "59000", city: "Lille", category: "Environment", name_asso: "Easy Cleaning", user: jp, cover_pic: "https://ecoquartierpetermcgill.org/wp-content/uploads/2017/05/corvees-1000x400.jpg") 
cultural = Event.create!(name: "L'éducation pour tous", description: "Des enfants déscolarisés ! Des professeurs pour les accompagner", address: "30 rue de Gand", CP: "59000", city: "Lille", category: "Cultural", name_asso: "Kids Education", user: alan, cover_pic: "https://www.enfantsprecoces.info/wp-content/uploads/bb-plugin/cache/enfants-heureux-ecole-panorama.jpg") 
student = Event.create!(name: "Aides aux Etudiants", description: "Les étudiants sont en difficultés ! Un petit geste pour leur venir en aide !", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Alimentation", name_asso: "Student Helper", user:  alan, cover_pic: "http://www.provenceducation.com/wp-content/uploads/2017/07/residence-etudiante-etudiants1.jpg") 
# women = Event.create!(name: "Aides aux femmes", description: "Venez en aides aux femmes maltraitées", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Solidarity", name_asso: "Stop Violence", user: adrien, cover_pic: "https://www.univ-lille.fr/fileadmin/user_upload/illustrations/actualites/2018/Universit%C3%A9_citoyenne/Journee-droits-femmes-1170x585px.jpg") 

puts "updating events pictures"
clothing_avatar = URI.open("https://images.unsplash.com/photo-1525507119028-ed4c629a60a3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80")
clothing_banner = URI.open("https://www.lenouveleconomiste.fr/wp-content/uploads/2018/06/location-826x459.jpg")
clothing.photo.attach(io: clothing_avatar, filename: 'avatar_clothing.jpg', content_type: 'image/jpg')
clothing.cover_img.attach(io: clothing_banner, filename: 'banner_clothing.jpg', content_type: 'image/jpg')

solidarity_avatar = URI.open("https://images.unsplash.com/photo-1596633607590-7156877ef734?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80")
solidarity_banner = URI.open("https://www.projectboldlife.com/images/2018/09/local-food-kitchen-internal-2-1024x682.jpg")
solidarity.photo.attach(io: solidarity_avatar, filename: 'avatar_solidarity.jpg', content_type: 'image/jpg')
solidarity.cover_img.attach(io: solidarity_banner, filename: 'banner_solidarity.jpg', content_type: 'image/jpg')

environment_avatar = URI.open("https://images.unsplash.com/photo-1602501415095-158eab942b6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=80")
environment_banner = URI.open("https://ecoquartierpetermcgill.org/wp-content/uploads/2017/05/corvees-1000x400.jpg")
environment.photo.attach(io: environment_avatar, filename: 'avatar_environment.jpg', content_type: 'image/jpg')
environment.cover_img.attach(io: environment_banner, filename: 'banner_environment.jpg', content_type: 'image/jpg')

cultural_avatar = URI.open("https://images.unsplash.com/photo-1607453998774-d533f65dac99?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80")
cultural_banner = URI.open("https://www.enfantsprecoces.info/wp-content/uploads/bb-plugin/cache/enfants-heureux-ecole-panorama.jpg")
cultural.photo.attach(io: cultural_avatar, filename: 'avatar_cultural.jpg', content_type: 'image/jpg')
cultural.cover_img.attach(io: cultural_banner, filename: 'banner_cultural.jpg', content_type: 'image/jpg')

student_avatar = URI.open("https://images.unsplash.com/photo-1571260899304-425eee4c7efc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
student_banner = URI.open("http://www.provenceducation.com/wp-content/uploads/2017/07/residence-etudiante-etudiants1.jpg")
student.photo.attach(io: student_avatar, filename: 'avatar_student.jpg', content_type: 'image/jpg')
student.cover_img.attach(io: student_banner, filename: 'banner_student.jpg', content_type: 'image/jpg')

# women_avatar = URI.open("https://images.unsplash.com/photo-1498661694102-0a3793edbe74?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=693&q=80")
# women_banner = URI.open("https://www.univ-lille.fr/fileadmin/user_upload/illustrations/actualites/2018/Universit%C3%A9_citoyenne/Journee-droits-femmes-1170x585px.jpg")
# women.photo.attach(io: women_avatar, filename: 'avatar_women.jpg', content_type: 'image/jpg')
# women.cover_img.attach(io: women_banner, filename: 'banner_women.jpg', content_type: 'image/jpg')


Whishlist =  WhishlistEvent.create!(user: maxence, event: clothing)
# Whishlist =  WhishlistEvent.create!(user: alan, event: solidarity)
# Whishlist =  WhishlistEvent.create!(user: adrien, event: environment)
# Whishlist =  WhishlistEvent.create!(user: alexis, event: cultural)
# Whishlist =  WhishlistEvent.create!(user: jp, event: women)


food = Need.create!(category: "Food", name: "Sandwich", quantity: 5, event: clothing)

donation = Donation.create!(quantity: 10, user: maxence, need: food)
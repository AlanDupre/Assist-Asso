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

clothing = Event.create!(name: "Clothing donation", description: "Donate your clothes to help the people in need!", address: "26 rue de béthune", CP: "59000", city: "Lille", category: "Solidarity", name_asso: "Clothing Family", user: alan, cover_pic: "https://www.lenouveleconomiste.fr/wp-content/uploads/2018/06/location-826x459.jpg") 
solidarity = Event.create!(name: "Helping those in need", description: "Marauding planned to help the most needy. Fight against hunger !", address: "45 Rue Léon Gambetta", CP: "59000", city: "Lille", category: "Alimentation", name_asso: "Solidarity", user: alan, cover_pic: "https://www.projectboldlife.com/images/2018/09/local-food-kitchen-internal-2-1024x682.jpg") 
environment = Event.create!(name: "Clean up near you!", description: "We're picking up trash near you! Help your neighborhood", address: "65 rue esquermoise", CP: "59000", city: "Lille", category: "Environment", name_asso: "Easy Cleaning", user: adrien, cover_pic: "https://ecoquartierpetermcgill.org/wp-content/uploads/2017/05/corvees-1000x400.jpg") 
cultural = Event.create!(name: "Education for everyone", description: "Children out of school! Teachers to follow them", address: "30 rue de Gand", CP: "59000", city: "Lille", category: "Cultural", name_asso: "Kids Education", user: maxence, cover_pic: "https://www.enfantsprecoces.info/wp-content/uploads/bb-plugin/cache/enfants-heureux-ecole-panorama.jpg") 
student = Event.create!(name: "Student Supports", description: "Students are in trouble! A small gesture to help them!", address: "65 avenue de Bretagne", CP: "59000", city: "Lille", category: "Alimentation", name_asso: "Student Helper", user:  jp, cover_pic: "http://www.provenceducation.com/wp-content/uploads/2017/07/residence-etudiante-etudiants1.jpg") 
women = Event.create!(name: "Protect Women", description: "Help abused women and help them to get more protection", address: "80 Avenue Montaigne", CP: "75000", city: "Paris", category: "Solidarity", name_asso: "Stop Violence", user: adrien, cover_pic: "https://www.univ-lille.fr/fileadmin/user_upload/illustrations/actualites/2018/Universit%C3%A9_citoyenne/Journee-droits-femmes-1170x585px.jpg") 
health = Event.create!(name: "Run against Cancer", description: "Have fun and run to help people against cancer", address: "30 rue Antoinette.", CP: "69000", city: "Lyon", category: "Solidarity", name_asso: "Fight Cancer", user: adrien, cover_pic: "https://mlzycj1o79sw.i.optimole.com/QEfFrcY-8u1yKTng/w:1024/h:682/q:auto/https://running-attitude.com/wp-content/uploads/2017/09/Enfants-sans-Cancer-Imagine-For-Margo.jpg") 
sports = Event.create!(name: "Sports for Everyone", description: "We want to create a new complex for the kids !", address: "30 Allées d'Orléans", CP: "33000", city: "Bordeaux", category: "Cultural", name_asso: "Sport Nation", user: jp, cover_pic: "https://www.lechodemaskinonge.com/wp-content/uploads/sites/27/2021/03/sports.jpg") 
old = Event.create!(name: "Old but Gold", description: "Don't forget our old people ! Let's help them to not be alone", address: "80 grand rue", CP: "13000", city: "Marseille", category: "Solidarity", name_asso: "Old Need Help", user: jp, cover_pic: "https://epale.ec.europa.eu/sites/default/files/2020.10.14_older_people_and_learning_webinar.jpg") 
museum = Event.create!(name: "Happy museum", description: "Culture is the best way to progress ! Everyone follow us !", address: "50 Avenue de la Gare", CP: "80000", city: "Amiens", category: "Cultural", name_asso: "Museum Fundation", user: maxence, cover_pic: "https://www.amcsti.fr/wp-content/uploads/2018/08/Museum-Lille-e1547219097521.jpg") 
trip = Event.create!(name: "Trip for All", description: "Hard for some people to get some holidays, not anymore !", address: "80 Avenue Victor Hugo", CP: "75000", city: "Paris", category: "Solidarity", name_asso: "Holidays Dream", user:  jp, cover_pic: "https://emcy.org/wp-content/uploads/2019/06/636170912910363458-999071253_Summer-Holidays-Wallpaper-2-1024x640.jpg") 


puts "updating events pictures"
health_avatar = URI.open("https://res.cloudinary.com/alandupre02/image/upload/v1625147423/photo-1476480862126-209bfaa8edc8_efpboc.jpg")
health_banner = URI.open("https://mlzycj1o79sw.i.optimole.com/QEfFrcY-8u1yKTng/w:1024/h:682/q:auto/https://running-attitude.com/wp-content/uploads/2017/09/Enfants-sans-Cancer-Imagine-For-Margo.jpg")
health.photo.attach(io: health_avatar, filename: 'health_clothing.jpg', content_type: 'image/jpg')
health.cover_img.attach(io: health_banner, filename: 'health_clothing.jpg', content_type: 'image/jpg')

sports_avatar = URI.open("https://res.cloudinary.com/alandupre02/image/upload/v1625147452/photo-1547347298-4074fc3086f0_agyybc.jpg")
sports_banner = URI.open("https://res.cloudinary.com/alandupre02/image/upload/v1625147308/sports_cx03d6.jpg")
sports.photo.attach(io: sports_avatar, filename: 'sports_clothing.jpg', content_type: 'image/jpg')
sports.cover_img.attach(io: sports_banner, filename: 'sports_clothing.jpg', content_type: 'image/jpg')

old_avatar = URI.open("https://res.cloudinary.com/alandupre02/image/upload/v1625147390/photo-1508963493744-76fce69379c0_u8bntj.jpg")
old_banner = URI.open("https://res.cloudinary.com/alandupre02/image/upload/v1625147323/2020.10.14_older_people_and_learning_webinar_rnv0ww.jpg")
old.photo.attach(io: old_avatar, filename: 'old_clothing.jpg', content_type: 'image/jpg')
old.cover_img.attach(io: old_banner, filename: 'old_clothing.jpg', content_type: 'image/jpg')

museum_avatar = URI.open("https://res.cloudinary.com/alandupre02/image/upload/v1625147486/photo-1482245294234-b3f2f8d5f1a4_gkqaql.jpg")
museum_banner = URI.open("https://res.cloudinary.com/alandupre02/image/upload/v1625147336/Museum-Lille-e1547219097521_ysqxkg.jpg")
museum.photo.attach(io: museum_avatar, filename: 'museum_clothing.jpg', content_type: 'image/jpg')
museum.cover_img.attach(io: museum_banner, filename: 'museum_clothing.jpg', content_type: 'image/jpg')

trip_avatar = URI.open("https://res.cloudinary.com/alandupre02/image/upload/v1625147508/photo-1564974944361-f22154173317_zceu7d.jpg")
trip_banner = URI.open("https://res.cloudinary.com/alandupre02/image/upload/v1625147357/636170912910363458-999071253_Summer-Holidays-Wallpaper-2-1024x640_c8cisf.jpg")
trip.photo.attach(io: trip_avatar, filename: 'trip_clothing.jpg', content_type: 'image/jpg')
trip.cover_img.attach(io: trip_banner, filename: 'trip_clothing.jpg', content_type: 'image/jpg')

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

women_avatar = URI.open("https://images.unsplash.com/photo-1498661694102-0a3793edbe74?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=693&q=80")
women_banner = URI.open("https://www.univ-lille.fr/fileadmin/user_upload/illustrations/actualites/2018/Universit%C3%A9_citoyenne/Journee-droits-femmes-1170x585px.jpg")
women.photo.attach(io: women_avatar, filename: 'avatar_women.jpg', content_type: 'image/jpg')
women.cover_img.attach(io: women_banner, filename: 'banner_women.jpg', content_type: 'image/jpg')

Whishlist =  WhishlistEvent.create!(user: maxence, event: clothing)

Need.create!(category: "People", name: "People", quantity: 20, event: health)
Need.create!(category: "Money", name: "Money (€)", quantity: 1000, event: health)
Need.create!(category: "People", name: "People", quantity: 20, event: old)
Need.create!(category: "Money", name: "Money (€)", quantity: 600, event: old)
Need.create!(category: "Furnitures", name: "Books", quantity: 40, event: old)
Need.create!(category: "Furnitures", name: "Games", quantity: 30, event: old)
Need.create!(category: "People", name: "People", quantity: 20, event: sports)
Need.create!(category: "Furnitures", name: "Football", quantity: 20, event: sports)
Need.create!(category: "People", name: "People", quantity: 20, event: museum)
Need.create!(category: "Money", name: "Money (€)", quantity: 20, event: museum)
Need.create!(category: "Money", name: "Money (€)e", quantity: 2000, event: women)
Need.create!(category: "Furnitures", name: "Beds", quantity: 20, event: women)
Need.create!(category: "Money", name: "Money (€)", quantity: 20, event: trip)
Need.create!(category: "People", name: "People", quantity: 60, event: trip)


food = Need.create!(category: "Furnitures", name: "Clothes (KG)", quantity: 5, event: clothing)
Need.create!(category: "Money", name: "Money (€)", quantity: 600, event: clothing)
Need.create!(category: "People", name: "People", quantity: 20, event: clothing)

people = Need.create!(category: "Money", name: "Money (€)", quantity: 5, event: solidarity)
Need.create!(category: "People", name: "People", quantity: 30, event: solidarity)
Need.create!(category: "Food", name: "Rice (Kg)", quantity: 200, event: solidarity)

money = Need.create!(category: "Money", name: "Money (€)", quantity: 5, event: environment)
Need.create!(category: "People", name: "People", quantity: 30, event: environment)
Need.create!(category: "Furnitures", name: "Bags", quantity: 60, event: environment)

Need.create!(category: "Money", name: "Money (€)", quantity: 200, event: student)
Need.create!(category: "Food", name: "Pasta (Kg)", quantity: 50, event: student)
Need.create!(category: "People", name: "People", quantity: 20, event: student)

Need.create!(category: "Money", name: "Money (€)", quantity: 200, event: cultural)
Need.create!(category: "Food", name: "Pasta (Kg)", quantity: 50, event: cultural)
Need.create!(category: "People", name: "People", quantity: 20, event: cultural)

donation = Donation.create!(quantity: 5, user: maxence, need: food)
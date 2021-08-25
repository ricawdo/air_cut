require 'open-uri'

img_barber_fabien = %w[https://res.cloudinary.com/ricawdo/image/upload/v1629808314/obi-onyeador--sRVfY0f2d8-unsplash_lrhu1d.jpg]

require "open-uri"
puts 'Cleaning database...'
Review.destroy_all
Booking.destroy_all
BarberShop.destroy_all
User.destroy_all

Service.destroy_all

puts 'Create Users...'
pierre = User.create(first_name: "Pierre", last_name: "Luce", email:"pierre.luce@gmail.com", phone_number: "0673869727", password: "123456", gender: "homme", role: "client")
luc = User.create(first_name: "Luc", last_name: "Daniel", email:"luc.daniel@gmail.com", phone_number: "0648398674", password: "123456", gender: "homme", role: "client")
damien = User.create(first_name: "Damien", last_name: "Rolland", email:"damien.rolland@gmail.com", phone_number: "0648593714", password: "123456", gender: "homme", role: "client")
camille = User.create(first_name: "Camille", last_name: "Dune", email:"camille.dune@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
marie = User.create(first_name: "Marie", last_name: "Lota", email:"marie.lota@gmail.com", phone_number: "0698482857", password: "123456", gender: "femme", role: "client")
chantal = User.create(first_name: "Chantal", last_name: "Katsu", email:"chantal.katsu@gmail.com", phone_number: "0657498265", password: "123456", gender: "femme", role: "client")
daniel = User.create(first_name: "Daniel", last_name: "Vass", email:"daniel.vass@gmail.com", phone_number: "0665478390", password: "123456", gender: "homme", role: "client")
pascal = User.create(first_name: "Pascal", last_name: "sine", email:"pascal.sine@gmail.com", phone_number: "0648593714", password: "123456", gender: "homme", role: "barber")
didier = User.create(first_name: "Didier", last_name: "Deloin", email:"didier.deloin@gmail.com", phone_number: "0648293714", password: "123456", gender: "homme", role: "barber")
claude = User.create(first_name: "Claude", last_name: "Rene", email:"claude.rene@gmail.com", phone_number: "0648593794", password: "123456", gender: "homme", role: "barber")
franck = User.create(first_name: "Franck", last_name: "dame", email:"franck.dame@gmail.com", phone_number: "0648593710", password: "123456", gender: "homme", role: "barber")
thibault = User.create(first_name: "Thibault", last_name: "Renault", email:"thibault.renault@gmail.com", phone_number: "0640593714", password: "123456", gender: "homme", role: "barber")
cecile = User.create(first_name: "Cecile", last_name: "Lombert", email:"cecile.lombert@gmail.com", phone_number: "0608593714", password: "123456", gender: "femme", role: "barber")
fabien = User.create(first_name: "Fabien", last_name: "cool", email:"fabien.cool@gmail.com", phone_number: "0648593754", password: "123456", gender: "homme", role: "barber")
morgan = User.create(first_name: "morgan", last_name: "serge", email:"morgan.serge@gmail.com", phone_number: "0648593751", password: "123456", gender: "homme", role: "barber")
cedric = User.create(first_name: "Cedric", last_name: "Leroux", email:"cedric.leroux@gmail.com", phone_number: "0648003754", password: "123456", gender: "homme", role: "barber")
pauletta = User.create(first_name: "Pauletta", last_name: "Foppa", email:"pauletta.foppa@gmail.com", phone_number: "0648593799", password: "123456", gender: "femme", role: "barber")
renald = User.create(first_name: "Renald", last_name: "Dumont", email:"renald.dumont@gmail.com", phone_number: "0649993754", password: "123456", gender: "homme", role: "barber")
clement = User.create(first_name: "Clement", last_name: "Turpin", email:"clement.turpin@gmail.com", phone_number: "0600593754", password: "123456", gender: "homme", role: "barber")
leo = User.create(first_name: "Leo", last_name: "Dubois", email:"leo.dubois@gmail.com", phone_number: "0648591234", password: "123456", gender: "homme", role: "barber")
samuel = User.create(first_name: "Samuel", last_name: "Umtiti", email:"samuel.umtiti@gmail.com", phone_number: "0648512354", password: "123456", gender: "homme", role: "barber")
bruno = User.create(first_name: "Bruno", last_name: "boom", email: "bruno.boom@gmail.com", phone_number: "0620202020", password: "123456", gender: "homme" ,role: "client")
ricardo = User.create(first_name: "Ricardo", last_name: "boom", email: "ricardo.boom@gmail.com", phone_number: "0610101010", password: "123456", gender: "homme" ,role: "client")
anne = User.create(first_name: "Anne", last_name: "Barois", email: "anne.barois@gmail.com", phone_number: "0630303030", password: "123456", gender: "femme" ,role: "client")
diana = User.create(first_name: "Diana", last_name: "Leclerc", email: "diana.leclerc@gmail.com", phone_number: "0640404040", password: "123456", gender: "femme" ,role: "client")
michel = User.create(first_name: "Michel", last_name: "Vandee", email: "michel.vandee@gmail.com", phone_number: "0620907665", password: "123456", gender: "homme" ,role: "barber")
oneal = User.create(first_name: "Oneal", last_name: "Broue", email: "Oneal.broue@gmail.com", phone_number: "0628637832", password: "123456", gender: "homme" ,role: "barber")
clodine = User.create(first_name: "Clodine", last_name: "brif", email: "Clodine.brif@gmail.com", phone_number: "0628372903", password: "123456", gender: "femme" ,role: "barber")
anna = User.create(first_name: "Anna", last_name: "Bougiote", email: "anna.bougiote@gmail.com", phone_number: "0683792892", password: "123456", gender: "femme" ,role: "barber")
buffy = User.create(first_name: "Buffy", last_name: "Dupot", email: "buffy.dupot@gmail.com", phone_number: "0627368O28", password: "123456", gender: "femme" ,role: "barber")
valentin = User.create(first_name: "Valentin", last_name: "clerambot", email: "valentin.clerambot@gmail.com", phone_number: "0638980937", password: "123456", gender: "homme" ,role: "barber")
florian = User.create(first_name: "Florian", last_name: "goyer", email: "florian.goyer@gmail.com", phone_number: "0639728032", password: "123456", gender: "homme" ,role: "barber")
puts 'Ok Users! 💇🏽‍♂️'

puts 'Create barber_shops...'
labo = BarberShop.create(name: "Le labo à barbe", address: "5 Rue Breguet Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche lundi], opening_hours: "", user: fabien)
file1 = URI.open('https://images.unsplash.com/photo-1516470930795-6ba2564824aa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80')
labo.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
file2 = URI.open('https://images.unsplash.com/photo-1521590832167-7bcbfaa6381f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
labo.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
file3 = URI.open('https://images.unsplash.com/photo-1568339434357-18719cd7f25b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80')
labo.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
file4 = URI.open('https://images.unsplash.com/photo-1622296089863-eb7fc530daa8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
labo.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
file5 = URI.open('https://images.unsplash.com/photo-1589985494639-69e60c82cab2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
labo.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
file6 = URI.open('https://images.unsplash.com/photo-1593702275687-f8b402bf1fb5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
labo.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
labo.save!
BarberShop.create(name: "Capitaine barbier", address: "Allée Adrienne-Lecouvreur Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche], opening_hours: "", user: cecile)
BarberShop.create(name: "Ciseaux d'Argile", address: "Allée Alexandre Vialatte Paris", remote: false, opening_days: %w[lundi mardi jeudi vendredi samedi], closing_days: "[mercredi dimanche]", opening_hours: "", user: thibault)
BarberShop.create(name: "Barbe a papa", address: "Allée de Bercy Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche], opening_hours: "", user: franck)
BarberShop.create(name: "Barber Bros", address: "Allée de l'Espérance Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche], opening_hours: "", user: claude)
BarberShop.create(name: "La mode Galente", address: "Allée de la Reine-Marguerite Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: "[lundi dimanche]", opening_hours: "", user: didier)
BarberShop.create(name: "Top Barber", address: "Allée de la Garance Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: "[lundi dimanche]", opening_hours: "", user: pascal)
BarberShop.create(name: "Magique Barber", address: "Allée de Longchamp Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: "[lundi dimanche]", opening_hours: "", user: morgan)
BarberShop.create(name: "Classe Barber", address: "Allée des Lapins Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: "[lundi dimanche]", opening_hours: "", user: cedric)
BarberShop.create(name: "Fresh Air", address: "Allée des Poteaux Paris", remote: false, opening_days: %w[lundi mercredi jeudi vendredi samedi], closing_days: "[mardi dimanche]", opening_hours: "", user: pauletta)
BarberShop.create(name: "Good style", address: "Allée des Quatre Carrefours Paris", remote: false, opening_days: %w[lundi mercredi jeudi vendredi samedi], closing_days: "[mardi dimanche]", opening_hours: "", user: renald)
BarberShop.create(name: "Les Gentils mens", address: "Allée des Vergers Paris", remote: false, opening_days: %w[lundi mercredi jeudi vendredi samedi], closing_days: "[mardi dimanche]", opening_hours: "", user: clement)
BarberShop.create(name: "Nouvelle coupe", address: "Allée Diane-de-Poitiers Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi], closing_days: "[samedi dimanche]", opening_hours: "", user: leo)
BarberShop.create(name: "Casse la demarche", address: "Allée du Bord-de-l'Eau Paris", remote: false, opening_days: %W[lundi mardi mercredi jeudi vendredi], closing_days: "[samedi dimanche]", opening_hours: "", user: samuel)
barber_diana = BarberShop.create(name: "Medley Rive Droite", address: "21 Rue Vieille du Temple", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche lundi], opening_hours: "", user: diana)
barber_clodine = BarberShop.create(name: "Le Loft Barber shop - Châtelet", address: "3, Rue du Plat d'Étain", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi dimanche], closing_days: "", opening_hours: "", user: clodine)
barber_oneal = BarberShop.create(name: "Prestige Barber Paris", address: "6, Rue des Prêcheurs", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche lundi], opening_hours: "", user: oneal)
barber_michel = BarberShop.create(name: "Le club 33", address: "90, Rue du Temple", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi dimanche], closing_days: "", opening_hours: "", user: michel)
barber_florian = BarberShop.create(name: "The barber studio", address: "1, Rue du Cygne", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi dimanche], closing_days: "", opening_hours: "", user: florian)
barber_anna = BarberShop.create(name: "Le petit salon 38", address: "18, Rue Tiquetonne", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche], opening_hours: "", user: anna)
barber_buffy = BarberShop.create(name: "Buffy coiffure", address: "16 villa gaudelet", remote: true, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi dimanche], closing_days: "", opening_hours: "", user: buffy)
barber_valentin = BarberShop.create(name: "Absolut", address: "3, boulevard de sébastopol", remote: true, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche], opening_hours: "", user: valentin)
puts 'Ok Barbershops ! 💈'

puts 'Create services...'
lissage = Service.create(name: "lissage brésilien", gender: "femme")
degrade_bas = Service.create(name: "Dégradé bas", gender: "homme")
Service.create(name: "dégradé haut", gender: "homme")
Service.create(name: "brushing", gender: "femme")
puts 'Ok services ! ✂️'

puts 'Create bookings...'
booking_pierre = Booking.create(user: pierre, start_datetime: DateTime.new(2021,2,3,4,5,6), end_datetime: DateTime.new(2021,2,3,4,5,7), total_amount: 25)
puts 'Ok bookings! 📅'

puts 'Create reviews...'
Review.create(rating: rand(0..5), comment: "Excellente coiffure ! Au top !", user: pierre, booking: booking_pierre)
puts 'Ok reviews! ⭐️ '

puts "seed en cours gwen"
ShopService.create(price: 10, duration: 60, description: "Super degrade", service_id: degrade_bas.id, barber_shop_id: labo.id)


Review.create(rating: 5, comment: "Toujours aussi bien accueilli, prix abordable et prestation de qualité", user_id: pierre.id)

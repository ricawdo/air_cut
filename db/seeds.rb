require "open-uri"
puts 'Cleaning database...'
ShopService.destroy_all
Review.destroy_all
Booking.destroy_all
BarberShop.destroy_all
User.destroy_all

Service.destroy_all

puts 'Create Users...'
puts 'Create Pierre...'
pierre = User.create(first_name: "Pierre", last_name: "Luce", email:"pierre.luce@gmail.com", phone_number: "0673869727", password: "123456", gender: "homme", role: "client")
puts 'Create Luc...'
luc = User.create(first_name: "Luc", last_name: "Daniel", email:"luc.daniel@gmail.com", phone_number: "0648398674", password: "123456", gender: "homme", role: "client")
puts 'Create Damien ...'
damien = User.create(first_name: "Damien", last_name: "Rolland", email:"damien.rolland@gmail.com", phone_number: "0648593714", password: "123456", gender: "homme", role: "client")
puts 'Create Camille ...'
camille = User.create(first_name: "Camille", last_name: "Dune", email:"camille.dune@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
puts 'Create Marie ...'
marie = User.create(first_name: "Marie", last_name: "Lota", email:"marie.lota@gmail.com", phone_number: "0698482857", password: "123456", gender: "femme", role: "client")
puts 'Create Chantal ...'
chantal = User.create(first_name: "Chantal", last_name: "Katsu", email:"chantal.katsu@gmail.com", phone_number: "0657498265", password: "123456", gender: "femme", role: "client")
puts 'Create Daniel ...'
daniel = User.create(first_name: "Daniel", last_name: "Vass", email:"daniel.vass@gmail.com", phone_number: "0665478390", password: "123456", gender: "homme", role: "client")
puts 'Create Pascal ...'
pascal = User.create(first_name: "Pascal", last_name: "sine", email:"pascal.sine@gmail.com", phone_number: "0648593714", password: "123456", gender: "homme", role: "barber")
puts 'Create Didier ...'
didier = User.create(first_name: "Didier", last_name: "Deloin", email:"didier.deloin@gmail.com", phone_number: "0648293714", password: "123456", gender: "homme", role: "barber")
puts 'Create Claude ...'
claude = User.create(first_name: "Claude", last_name: "Rene", email:"claude.rene@gmail.com", phone_number: "0648593794", password: "123456", gender: "homme", role: "barber")
puts 'Create Franck ...'
franck = User.create(first_name: "Franck", last_name: "dame", email:"franck.dame@gmail.com", phone_number: "0648593710", password: "123456", gender: "homme", role: "barber")
puts 'Create Thibault ...'
thibault = User.create(first_name: "Thibault", last_name: "Renault", email:"thibault.renault@gmail.com", phone_number: "0640593714", password: "123456", gender: "homme", role: "barber")
puts 'Create Cecile ...'
cecile = User.create(first_name: "Cecile", last_name: "Lombert", email:"cecile.lombert@gmail.com", phone_number: "0608593714", password: "123456", gender: "femme", role: "barber")
puts 'Create Fabien ...'
fabien = User.create(first_name: "Fabien", last_name: "cool", email:"fabien.cool@gmail.com", phone_number: "0648593754", password: "123456", gender: "homme", role: "barber")
puts 'Create Morgan ...'
morgan = User.create(first_name: "morgan", last_name: "serge", email:"morgan.serge@gmail.com", phone_number: "0648593751", password: "123456", gender: "homme", role: "barber")
puts 'Create Cedric ...'
cedric = User.create(first_name: "Cedric", last_name: "Leroux", email:"cedric.leroux@gmail.com", phone_number: "0648003754", password: "123456", gender: "homme", role: "barber")
puts 'Create Pauletta ...'
pauletta = User.create(first_name: "Pauletta", last_name: "Foppa", email:"pauletta.foppa@gmail.com", phone_number: "0648593799", password: "123456", gender: "femme", role: "barber")
puts 'Create Renald ...'
renald = User.create(first_name: "Renald", last_name: "Dumont", email:"renald.dumont@gmail.com", phone_number: "0649993754", password: "123456", gender: "homme", role: "barber")
puts 'Create Clement ...'
clement = User.create(first_name: "Clement", last_name: "Turpin", email:"clement.turpin@gmail.com", phone_number: "0600593754", password: "123456", gender: "homme", role: "barber")
puts 'Create Léo ...'
leo = User.create(first_name: "Leo", last_name: "Dubois", email:"leo.dubois@gmail.com", phone_number: "0648591234", password: "123456", gender: "homme", role: "barber")
puts 'Create Samuel ...'
samuel = User.create(first_name: "Samuel", last_name: "Umtiti", email:"samuel.umtiti@gmail.com", phone_number: "0648512354", password: "123456", gender: "homme", role: "barber")
puts 'Create Bruno ...'
bruno = User.create(first_name: "Bruno", last_name: "boom", email: "bruno.boom@gmail.com", phone_number: "0620202020", password: "123456", gender: "homme" ,role: "client")
puts 'Create Ricardo ...'
ricardo = User.create(first_name: "Ricardo", last_name: "boom", email: "ricardo.boom@gmail.com", phone_number: "0610101010", password: "123456", gender: "homme" ,role: "client")
puts 'Create Anne ...'
anne = User.create(first_name: "Anne", last_name: "Barois", email: "anne.barois@gmail.com", phone_number: "0630303030", password: "123456", gender: "femme" ,role: "client")
puts 'Create Diana ...'
diana = User.create(first_name: "Diana", last_name: "Leclerc", email: "diana.leclerc@gmail.com", phone_number: "0640404040", password: "123456", gender: "femme" ,role: "client")
puts 'Create Michel ...'
michel = User.create(first_name: "Michel", last_name: "Vandee", email: "michel.vandee@gmail.com", phone_number: "0620907665", password: "123456", gender: "homme" ,role: "barber")
puts 'Create Oneal ...'
oneal = User.create(first_name: "Oneal", last_name: "Broue", email: "Oneal.broue@gmail.com", phone_number: "0628637832", password: "123456", gender: "homme" ,role: "barber")
puts 'Create Clotilde ...'
clodine = User.create(first_name: "Clodine", last_name: "brif", email: "Clodine.brif@gmail.com", phone_number: "0628372903", password: "123456", gender: "femme" ,role: "barber")
puts 'Create Anna ...'
anna = User.create(first_name: "Anna", last_name: "Bougiote", email: "anna.bougiote@gmail.com", phone_number: "0683792892", password: "123456", gender: "femme" ,role: "barber")
puts 'Create Buffy ...'
buffy = User.create(first_name: "Buffy", last_name: "Dupot", email: "buffy.dupot@gmail.com", phone_number: "0627368O28", password: "123456", gender: "femme" ,role: "barber")
puts 'Create Valentin ...'
valentin = User.create(first_name: "Valentin", last_name: "clerambot", email: "valentin.clerambot@gmail.com", phone_number: "0638980937", password: "123456", gender: "homme" ,role: "barber")
puts 'Create Florian ...'
florian = User.create(first_name: "Florian", last_name: "goyer", email: "florian.goyer@gmail.com", phone_number: "0639728032", password: "123456", gender: "homme" ,role: "barber")
puts 'Ok Users! 💇🏽‍♂️'

puts 'Create barber_shops...'
puts 'Create Labo à barbe'
labo = BarberShop.create(name: "Le labo à barbe", address: "5 Rue Breguet Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche lundi], opening_hours: '08:00 - 19:00', phone_number: "0143578420", user: fabien)
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
puts 'Create barber2'
barber2 = BarberShop.create(name: "Capitaine barbier", address: "Allée Adrienne-Lecouvreur Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche], opening_hours: '09:00 - 18:00', phone_number: "0143578490", user: cecile)
file1 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1629899115/nicolas-flor-RbyHJAjgGx8-unsplash_bmj2g7.jpg')
barber2.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
file2 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1629899215/valeriia-kogan-PD2RYMtsGhc-unsplash_swyk7x.jpg')
barber2.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
file3 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1629899318/mathilde-langevin-yuahvgxIXjE-unsplash_kt2uoo.jpg')
barber2.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
file4 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1629899176/baylee-gramling-a3xr2mVjT5M-unsplash_brjf3k.jpg')
barber2.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
file5 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1629899333/theme-photos-SYXxlEP5KAA-unsplash_c5kaiy.jpg')
barber2.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
file6 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1629899393/averie-woodard-4nulm-JUYFo-unsplash_cskaub.jpg')
barber2.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
barber2.save!
ciseaux = BarberShop.create(name: "Ciseaux d'Argile", address: "Allée Alexandre Vialatte Paris", remote: false, opening_days: %w[lundi mardi jeudi vendredi samedi], closing_days: "[mercredi dimanche]", opening_hours: '10:00 - 18:00', phone_number: "0141893784", user: thibault)
file1 = URI.open('https://images.unsplash.com/photo-1585747860715-2ba37e788b70?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1053&q=80')
labo.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
file2 = URI.open('https://images.unsplash.com/photo-1591036690721-2d84db5d045b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
labo.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
file3 = URI.open('https://images.unsplash.com/photo-1606333259737-6da197890fa2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
labo.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
file4 = URI.open('https://images.unsplash.com/photo-1611433217094-65f4c56b2e09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')
labo.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
file5 = URI.open('https://images.unsplash.com/photo-1602641902219-622a1b9a257a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
labo.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
file6 = URI.open('https://images.unsplash.com/photo-1611433217216-592b86546e1c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')
labo.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
papa = BarberShop.create(name: "Barbe a papa", address: "Allée de Bercy Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche], opening_hours: '10:00 - 19:00', phone_number: "0143503784", user: franck)
file1 = URI.open('https://images.unsplash.com/photo-1462850932907-687c915e3d38?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
labo.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
file2 = URI.open('https://images.unsplash.com/photo-1600948836101-f9ffda59d250?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFpciUyMHNhbG9ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
labo.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
file3 = URI.open('https://images.unsplash.com/photo-1533052406605-9538b1b36aff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
labo.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
file4 = URI.open('https://images.unsplash.com/photo-1593580520258-cba26159511d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1537&q=80')
labo.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
file5 = URI.open('https://images.unsplash.com/photo-1527082395-e939b847da0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=675&q=80')
labo.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
file6 = URI.open('https://images.unsplash.com/photo-1614495038926-06305e479e9d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
labo.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
bros = BarberShop.create(name: "Barber Bros", address: "Allée de l'Espérance Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche], opening_hours: '09:00 - 18:00', phone_number: "0145563710", user: claude)
file1 = URI.open('https://images.unsplash.com/photo-1576168056582-0a851a87ab8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=649&q=80')
labo.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
file2 = URI.open('https://www.pagesjaunes.fr/media/ugc/claude_coiffure_08300900_124551505')
labo.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
file3 = URI.open('https://images.unsplash.com/photo-1619233543640-af09c173763b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80')
labo.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
file4 = URI.open('https://images.unsplash.com/photo-1605980626247-eb3a2f10ec8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80')
BarberShop.create(name: "La mode Galente", address: "Allée de la Reine-Marguerite Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: "[lundi dimanche]", opening_hours: "", user: didier)
BarberShop.create(name: "Top Barber", address: "Allée de la Garance Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: "[lundi dimanche]", opening_hours: "", user: pascal)
BarberShop.create(name: "Magique Barber", address: "Allée de Longchamp Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: "[lundi dimanche]", opening_hours: "", user: morgan)
BarberShop.create(name: "Classe Barber", address: "Allée des Lapins Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: "[lundi dimanche]", opening_hours: "", user: cedric)
air = BarberShop.create(name: "Fresh Air", address: "Allée des Poteaux Paris", remote: false, opening_days: %w[lundi mercredi jeudi vendredi samedi], closing_days: "[mardi dimanche]", opening_hours: '09:00 - 19:00', phone_number: "0143593710", user: pauletta)
file1 = URI.open('https://images.unsplash.com/photo-1559599101-f09722fb4948?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
labo.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
file2 = URI.open('https://images.unsplash.com/photo-1626383137804-ff908d2753a2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
labo.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
file3 = URI.open('https://images.unsplash.com/photo-1549236177-f9b0031756eb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80')
labo.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
file4 = URI.open('https://images.unsplash.com/photo-1605980626247-eb3a2f10ec8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80')
labo.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
file5 = URI.open('https://images.unsplash.com/photo-1562259920-47afc3030ba2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
labo.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
file6 = URI.open('https://images.unsplash.com/photo-1574773004910-1eeaabb62b55?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80')
labo.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
BarberShop.create(name: "Good style", address: "Allée des Quatre Carrefours Paris", remote: false, opening_days: %w[lundi mercredi jeudi vendredi samedi], closing_days: "[mardi dimanche]", opening_hours: "", user: renald)
BarberShop.create(name: "Les Gentils mens", address: "Allée des Vergers Paris", remote: false, opening_days: %w[lundi mercredi jeudi vendredi samedi], closing_days: "[mardi dimanche]", opening_hours: "", user: clement)
BarberShop.create(name: "Nouvelle coupe", address: "Allée Diane-de-Poitiers Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi], closing_days: "[samedi dimanche]", opening_hours: "", user: leo)
BarberShop.create(name: "Casse la demarche", address: "Allée du Bord-de-l'Eau Paris", remote: false, opening_days: %W[lundi mardi mercredi jeudi vendredi], closing_days: "[samedi dimanche]", opening_hours: "", user: samuel)
barber_diana = BarberShop.create(name: "Medley Rive Droite", address: "21 Rue Vieille du Temple Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche lundi], opening_hours: "", user: diana)
barber_clodine = BarberShop.create(name: "Le Loft Barber shop - Châtelet", address: "3, Rue du Plat d'Étain Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi dimanche], closing_days: "", opening_hours: "", user: clodine)
barber_oneal = BarberShop.create(name: "Prestige Barber Paris", address: "6, Rue des Prêcheurs Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche lundi], opening_hours: "", user: oneal)
barber_michel = BarberShop.create(name: "Le club 33", address: "90, Rue du Temple Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi dimanche], closing_days: "", opening_hours: "", user: michel)
barber_florian = BarberShop.create(name: "The barber studio", address: "1, Rue du Cygne Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi dimanche], closing_days: "", opening_hours: "", user: florian)
barber_anna = BarberShop.create(name: "Le petit salon 38", address: "18, Rue Tiquetonne Paris", remote: false, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche], opening_hours: "", user: anna)
barber_buffy = BarberShop.create(name: "Buffy coiffure", address: "16 villa gaudelet Paris", remote: true, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi dimanche], closing_days: "", opening_hours: "", user: buffy)
barber_valentin = BarberShop.create(name: "Absolut", address: "3, boulevard de sébastopol Paris", remote: true, opening_days: %w[lundi mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche], opening_hours: "", user: valentin)
puts 'Ok Barbershops ! 💈'

puts 'Create services...'
service_one = Service.create(name: "Coupe Homme", gender: "homme")
ShopService.create(barber_shop: barber_diana, service: service_one)
service_second = Service.create(name: "Barbier", gender: "homme")
ShopService.create(barber_shop: barber_clodine, service: service_second)
service_three = Service.create(name: "Coiffure Afro", gender: "homme")
ShopService.create(barber_shop: barber_oneal, service: service_three)
service_four = Service.create(name: "Permanente", gender: "femme")
ShopService.create(barber_shop: barber_michel, service: service_four)
service_five = Service.create(name: "Coloration", gender: "femme")
ShopService.create(barber_shop: barber_florian, service: service_five)
service_six = Service.create(name: "lissage/Défrisage", gender: "femme")
ShopService.create(barber_shop: barber_anna, service: service_six)
service_seven = Service.create(name: "Coupe enfant", gender: "homme")
ShopService.create(barber_shop: barber_buffy, service: service_seven)

Service.create(name: "dégradé haut", gender: "homme")
Service.create(name: "brushing", gender: "femme")
puts 'Ok services ! ✂️'

puts 'Create bookings...'
booking_pierre = Booking.create(user: pierre, start_datetime: DateTime.new(2021,2,3,4,5,6), end_datetime: DateTime.new(2021,2,3,4,5,7), total_amount: 25)
booking_luc = Booking.create(user: pluc, start_datetime: DateTime.new(2021,2,3,4,5,6), end_datetime: DateTime.new(2021,2,3,4,5,7), total_amount: 25)
booking_damien = Booking.create(user: damien, start_datetime: DateTime.new(2021,2,3,4,5,6), end_datetime: DateTime.new(2021,2,3,4,5,7), total_amount: 25)
puts 'Ok bookings! 📅'

puts 'Create Shop Services...'
degrade_bas = Service.create(name: "Dégradé bas", gender: "homme")
degrade = ShopService.create(price: 10, duration: 60, description: "Super degrade", service_id: degrade_bas.id, barber_shop_id: barber2.id)

puts 'Create Booking Services...'
BookingService.create(booking_id: booking_pierre.id, shop_service_id: degrade.id)

puts 'Create reviews...'
Review.create(rating: rand(0..5), comment: "Excellente coiffure ! Au top !", user: pierre, booking: booking_pierre)
Review.create(rating: 4, comment: "Pas d'attente, bien accueilli et très gentil", user: luc, booking: booking_luc)
Review.create(rating: 3, comment: "Bien, un petit peu trop rapide mais satifait du resultat", user: damien, booking: booking_damien)

puts 'Ok reviews! ⭐️ '

puts "seed en cours gwen"
ShopService.create(price: 10, duration: 60, description: "Super degrade", service_id: degrade_bas.id, barber_shop_id: labo.id)


Booking.create!(user: User.first)
Review.create!(rating: 5, comment: "Toujours aussi bien accueilli, prix abordable et prestation de qualité", user: User.last, booking: Booking.last)
# Review.create(user: User.first, booking: Booking.first)

puts 'Cleaning database...'
User.destroy_all
BarberShop.destroy_all
Service.destroy_all

puts 'Create Users...'

pierre = User.new(first_name: "Pierre", last_name: "Luce", email:"pierre.luce@gmail.com", phone_number: "0673869727", password: "123456", gender: "homme", role: "client").save!
luc = User.new(first_name: "Luc", last_name: "Daniel", email:"luc.daniel@gmail.com", phone_number: "0648398674", password: "123456", gender: "homme", role: "client").save!
damien = User.new(first_name: "Damien", last_name: "Rolland", email:"damien.rolland@gmail.com", phone_number: "0648593714", password: "123456", gender: "homme", role: "client")
camille = User.new(first_name: "Camille", last_name: "Dune", email:"camille.dune@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
marie = User.new(first_name: "Marie", last_name: "Lota", email:"marie.lota@gmail.com", phone_number: "0698482857", password: "123456", gender: "femme", role: "client")
chantal = User.new(first_name: "Chantal", last_name: "Katsu", email:"chantal.katsu@gmail.com", phone_number: "0657498265", password: "123456", gender: "femme", role: "client")
daniel = User.new(first_name: "Daniel", last_name: "Vass", email:"daniel.vass@gmail.com", phone_number: "0665478390", password: "123456", gender: "homme", role: "client")
pascal = User.new(first_name: "Pascal", last_name: "sine", email:"pascal.sine@gmail.com", phone_number: "0648593714", password: "123456", gender: "homme", role: "barber")
didier = User.new(first_name: "Didier", last_name: "Deloin", email:"didier.deloin@gmail.com", phone_number: "0648293714", password: "123456", gender: "homme", role: "barber")
claude = User.new(first_name: "Claude", last_name: "Rene", email:"claude.rene@gmail.com", phone_number: "0648593794", password: "123456", gender: "homme", role: "barber")
franck = User.new(first_name: "Franck", last_name: "dame", email:"franck.dame@gmail.com", phone_number: "0648593710", password: "123456", gender: "homme", role: "barber")
thibault = User.new(first_name: "Thibault", last_name: "Renault", email:"thibault.renault@gmail.com", phone_number: "0640593714", password: "123456", gender: "homme", role: "barber")
cecile = User.new(first_name: "Cecile", last_name: "Lombert", email:"cecile.lombert@gmail.com", phone_number: "0608593714", password: "123456", gender: "femme", role: "barber")
fabien = User.new(first_name: "Fabien", last_name: "cool", email:"fabien.cool@gmail.com", phone_number: "0648593754", password: "123456", gender: "homme", role: "barber")
morgan = User.new(first_name: "morgan", last_name: "serge", email:"morgan.serge@gmail.com", phone_number: "0648593751", password: "123456", gender: "homme", role: "barber")
cedric = User.new(first_name: "Cedric", last_name: "Leroux", email:"cedric.leroux@gmail.com", phone_number: "0648003754", password: "123456", gender: "homme", role: "barber")
pauletta = User.new(first_name: "Pauletta", last_name: "Foppa", email:"pauletta.foppa@gmail.com", phone_number: "0648593799", password: "123456", gender: "femme", role: "barber")
renald = User.new(first_name: "Renald", last_name: "Dumont", email:"renald.dumont@gmail.com", phone_number: "0649993754", password: "123456", gender: "homme", role: "barber")
clement = User.new(first_name: "Clement", last_name: "Turpin", email:"clement.turpin@gmail.com", phone_number: "0600593754", password: "123456", gender: "homme", role: "barber")
leo = User.new(first_name: "Leo", last_name: "Dubois", email:"leo.dubois@gmail.com", phone_number: "0648591234", password: "123456", gender: "homme", role: "barber")
samuel = User.new(first_name: "Samuel", last_name: "Umtiti", email:"samuel.umtiti@gmail.com", phone_number: "0648512354", password: "123456", gender: "homme", role: "barber")
bruno = User.new(first_name: "Bruno", last_name: "boom", email: "bruno.boom@gmail.com", phone_number: "0620202020", password: "123456", gender: "homme" ,role: "client")
ricardo = User.new(first_name: "Ricardo", last_name: "boom", email: "ricardo.boom@gmail.com", phone_number: "0610101010", password: "123456", gender: "homme" ,role: "client")
anne = User.new(first_name: "Anne", last_name: "Barois", email: "anne.barois@gmail.com", phone_number: "0630303030", password: "123456", gender: "femme" ,role: "client")
diana = User.new(first_name: "Diana", last_name: "Leclerc", email: "diana.leclerc@gmail.com", phone_number: "0640404040", password: "123456", gender: "femme" ,role: "client")
michel = User.new(first_name: "Michel", last_name: "Vandee", email: "michel.vandee@gmail.com", phone_number: "0620907665", password: "123456", gender: "homme" ,role: "barber")
oneal = User.new(first_name: "Oneal", last_name: "Broue", email: "Oneal.broue@gmail.com", phone_number: "0628637832", password: "123456", gender: "homme" ,role: "barber")
clodine = User.new(first_name: "Clodine", last_name: "brif", email: "Clodine.brif@gmail.com", phone_number: "0628372903", password: "123456", gender: "femme" ,role: "barber")
anna = User.new(first_name: "Anna", last_name: "Bougiote", email: "anna.bougiote@gmail.com", phone_number: "0683792892", password: "123456", gender: "femme" ,role: "barber")
buffy = User.new(first_name: "Buffy", last_name: "Dupot", email: "buffy.dupot@gmail.com", phone_number: "0627368O28", password: "123456", gender: "femme" ,role: "barber")
valentin = User.new(first_name: "Valentin", last_name: "clerambot", email: "valentin.clerambot@gmail.com", phone_number: "0638980937", password: "123456", gender: "homme" ,role: "barber")
florian = User.new(first_name: "Florian", last_name: "goyer", email: "florian.goyer@gmail.com", phone_number: "0639728032", password: "123456", gender: "homme" ,role: "barber")

puts 'Create barber_shops...'
BarberShop.new(name: "Le labo à barbe", address: "5 Rue Breguet Paris", remote: "false", opening_days: "[mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[dimanche, lundi]", opening_hours: "", user: fabien)
BarberShop.new(name: "Capitaine barbier", address: "Allée Adrienne-Lecouvreur Paris", remote: "false", opening_days: "[lundi, mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[dimanche]", opening_hours: "", user: cecile)
BarberShop.new(name: "Ciseaux d'Argile", address: "Allée Alexandre Vialatte Paris", remote: "false", opening_days: "[lundi, mardi, jeudi, vendredi, samedi]", closing_days: "[mercredi, dimanche]", opening_hours: "", user: thibault)
BarberShop.new(name: "Barbe a papa", address: "Allée de Bercy Paris", remote: "false", opening_days: "[lundi, mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[dimanche]", opening_hours: "", user: franck)
BarberShop.new(name: "Barber Bros", address: "Allée de l'Espérance Paris", remote: "false", opening_days: "[lundi, mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[dimanche]", opening_hours: "", user: claude)
BarberShop.new(name: "La mode Galente", address: "Allée de la Reine-Marguerite Paris", remote: "false", opening_days: "[mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[lundi, dimanche]", opening_hours: "", user: didier)
BarberShop.new(name: "Top Barber", address: "Allée de la Garance Paris", remote: "false", opening_days: "[mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[lundi, dimanche]", opening_hours: "", user: pascal)
BarberShop.new(name: "Magique Barber", address: "Allée de Longchamp Paris", remote: "false", opening_days: "[mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[lundi, dimanche]", opening_hours: "", user: morgan)
BarberShop.new(name: "Classe Barber", address: "Allée des Lapins Paris", remote: "false", opening_days: "[mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[lundi, dimanche]", opening_hours: "", user: cedric)
BarberShop.new(name: "Fresh Air", address: "Allée des Poteaux Paris", remote: "false", opening_days: "[lundi, mercredi, jeudi, vendredi, samedi]", closing_days: "[mardi, dimanche]", opening_hours: "", user: pauletta)
BarberShop.new(name: "Good style", address: "Allée des Quatre Carrefours Paris", remote: "false", opening_days: "[lundi, mercredi, jeudi, vendredi, samedi]", closing_days: "[mardi, dimanche]", opening_hours: "", user: renald)
BarberShop.new(name: "Les Gentils mens", address: "Allée des Vergers Paris", remote: "false", opening_days: "[lundi, mercredi, jeudi, vendredi, samedi]", closing_days: "[mardi, dimanche]", opening_hours: "", user: clement)
BarberShop.new(name: "Nouvelle coupe", address: "Allée Diane-de-Poitiers Paris", remote: "false", opening_days: "[lundi, mardi, mercredi, jeudi, vendredi]", closing_days: "[samedi, dimanche]", opening_hours: "", user: leo)
BarberShop.new(name: "Casse la demarche", address: "Allée du Bord-de-l'Eau Paris", remote: "false", opening_days: "[lundi, mardi, mercredi, jeudi, vendredi]", closing_days: "[samedi, dimanche]", opening_hours: "", user: samuel)
barber_diana = BarberShop.new(name: "Medley Rive Droite", address: "21 Rue Vieille du Temple", remote: "false", opening_days: "[mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[dimanche, lundi]", opening_hours: "", user: diana)
barber_clodine = BarberShop.new(name: "Le Loft Barber shop - Châtelet", address: "3, Rue du Plat d'Étain", remote: "false", opening_days: "[lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche]", closing_days: "", opening_hours: "", user: clodine)
barber_oneal = BarberShop.new(name: "Prestige Barber Paris", address: "6, Rue des Prêcheurs", remote: "false", opening_days: "[mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[dimanche, lundi]", opening_hours: "", user: oneal)
barber_michel = BarberShop.new(name: "Le club 33", address: "90, Rue du Temple", remote: "false", opening_days: "[lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche]", closing_days: "", opening_hours: "", user: michel)
barber_florian = BarberShop.new(name: "The barber studio", address: "1, Rue du Cygne", remote: "false", opening_days: "[lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche]", closing_days: "", opening_hours: "", user: florian)
barber_anna = BarberShop.new(name: "Le petit salon 38", address: "18, Rue Tiquetonne", remote: "false", opening_days: "[lundi, mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[dimanche]", opening_hours: "", user: anna)
barber_buffy = BarberShop.new(name: "Buffy coiffure", address: "16 villa gaudelet", remote: "true", opening_days: "[lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche]", closing_days: "", opening_hours: "", user: buffy)
barber_valentin = BarberShop.new(name: "Absolut", address: "3, boulevard de sébastopol", remote: "true", opening_days: "[lundi, mardi, mercredi, jeudi, vendredi, samedi]", closing_days: "[dimanche]", opening_hours: "", user: valentin)

puts 'Create services...'
Service.new(name: "lissage brésilien", gender: "femme")
Service.new(name: "dégradé bas", gender: "homme")
Service.new(name: "dégradé haut", gender: "homme")
Service.new(name: "", gender: "femme")

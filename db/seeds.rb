require "open-uri"
puts 'Cleaning database...'
ShopService.destroy_all
Review.destroy_all
Booking.destroy_all
BarberShop.destroy_all
User.destroy_all

Service.destroy_all

puts 'Create Users...' # ***********************************************************************************************
puts '>> Clients...' # *************************************************************************************************

puts 'Create Wadi...'
wadi = User.create(first_name: "Wadi", last_name: "Boom", email: "wadi@gmail.com", phone_number: "0673869727", password: "123456", gender: "homme", role: "client")
# wadi_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630263386/22159093_353860515062143_2483913212299313152_n_hgnpmm.png')
# wadi.photo.attach(io: wadi_photo, filename: 'wadi.png', content_type: 'image/png')

puts 'Create Dustin...'
dustin = User.create(first_name: "Dustin", last_name: "Stender", email: "dustin@gmail.com", phone_number: "0673869727", password: "123456", gender: "homme", role: "client")
# dustin_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630189270/PortraitsLeWagon_0721_By_BenoitBillard-285_plwizk.jpg')
# dustin.photo.attach(io: dustin_photo, filename: 'dustin.png', content_type: 'image/png')

puts 'Create Amandine...'
amandine = User.create(first_name: "Amandine", last_name: "Arnould", email: "amandine@gmail.com", phone_number: "0673869727", password: "123456", gender: "femme", role: "client")
# amandine_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630189712/PortraitsLeWagon_0721_By_BenoitBillard-308_v4wmcm.jpg')
# amandine.photo.attach(io: amandine_photo, filename: 'amandine.png', content_type: 'image/png')

puts 'Create Lydia...'
lydia = User.create(first_name: "Lydia", last_name: "Seyler", email: "lydia@gmail.com", phone_number: "0673869727", password: "123456", gender: "femme", role: "client")
# lydia_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630189877/PortraitsLeWagon_0721_By_BenoitBillard-314_idekzc.jpg')
# lydia.photo.attach(io: lydia_photo, filename: 'lydia.png', content_type: 'image/png')

puts 'Create Bene...'
bene = User.create(first_name: "Bene", last_name: "Nolte", email: "bene@gmail.com", phone_number: "0673869727", password: "123456", gender: "homme", role: "client")
# bene_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630189973/PortraitsLeWagon_0721_By_BenoitBillard-326_nnqods.jpg')
# bene.photo.attach(io: bene_photo, filename: 'bene.png', content_type: 'image/png')

puts 'Create Andréa...'
pandrea = User.create(first_name: "Andréa", last_name: "Prouvost", email: "pandrea@gmail.com", phone_number: "0673869727", password: "123456", gender: "femme", role: "client")
# pandrea_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630189973/PortraitsLeWagon_0721_By_BenoitBillard-326_nnqods.jpg')
# pandrea.photo.attach(io: pandrea_photo, filename: 'pandrea.png', content_type: 'image/png')

puts 'Create Pierre...'
bpierre = User.create(first_name: "Pierre", last_name: "Bride", email: "bpierre@gmail.com", phone_number: "0648398674", password: "123456", gender: "homme", role: "client")
# bpierre_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630190169/PortraitsLeWagon_0721_By_BenoitBillard-357_trjmcv.jpg')
# bpierre.photo.attach(io: bpierre_photo, filename: 'bpierre.png', content_type: 'image/png')

puts 'Create Fati ...'
fati = User.create(first_name: "Fati", last_name: "Aamrane", email: "fati@gmail.com", phone_number: "0648593714", password: "123456", gender: "femme", role: "client")
# fati_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630190369/PortraitsLeWagon_0721_By_BenoitBillard-379_p8oswo.jpg')
# fati.photo.attach(io: fati_photo, filename: 'fati.png', content_type: 'image/png')

puts 'Create Paul ...'
paul = User.create(first_name: "Paul", last_name: "Loncke", email: "paul@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# paul_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630190531/PortraitsLeWagon_0721_By_BenoitBillard-406_zf8w5m.jpg')
# paul.photo.attach(io: paul_photo, filename: 'paul.png', content_type: 'image/png')

puts 'Create Anne Bonfante ...'
boanne = User.create(first_name: "Anne", last_name: "Bonfante", email: "boanne@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
# boanne_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630191343/PortraitsLeWagon_0721_By_BenoitBillard-451_pso1oo.jpg')
# boanne.photo.attach(io: boanne_photo, filename: 'boanne.png', content_type: 'image/png')

puts 'Create Mathias ...'
mathias = User.create(first_name: "Mathias", last_name: "Salanon", email: "mathias@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# mathias_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630191594/PortraitsLeWagon_0721_By_BenoitBillard-481_gvbbg3.jpg')
# mathias.photo.attach(io: mathias_photo, filename: 'mathias.png', content_type: 'image/png')

puts 'Create Nas ...'
nas = User.create(first_name: "Nasreddine", last_name: "Ghribi", email: "nas@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# nas_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630191701/PortraitsLeWagon_0721_By_BenoitBillard-484_zns72h.jpg')
# nas.photo.attach(io: nas_photo, filename: 'nas.png', content_type: 'image/png')

puts 'Create Pierre Grandjean ...'
gpierre = User.create(first_name: "Pierre", last_name: "Grandjean", email: "gpierre@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# gpierre_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630191743/PortraitsLeWagon_0721_By_BenoitBillard-500_cwemsr.jpg')
# gpierre.photo.attach(io: gpierre_photo, filename: 'gpierre.png', content_type: 'image/png')

puts 'Create Julien ...'
julien = User.create(first_name: "Julien", last_name: "Guichard", email: "julien@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# julien_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630192163/PortraitsLeWagon_0721_By_BenoitBillard-517_dhaafn.jpg')
# julien.photo.attach(io: julien_photo, filename: 'julien.png', content_type: 'image/png')

puts 'Create Arthur ...'
arthur = User.create(first_name: "Arthur", last_name: "Herminie", email: "arthur@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# arthur_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630192753/PortraitsLeWagon_0721_By_BenoitBillard-540_syikbb.jpg')
# arthur.photo.attach(io: arthur_photo, filename: 'arthur.png', content_type: 'image/png')

puts 'Create Martial ...'
martial = User.create(first_name: "Martial", last_name: "Herminie", email: "martial@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# martial_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630192807/PortraitsLeWagon_0721_By_BenoitBillard-550_juhqtl.jpg')
# martial.photo.attach(io: martial_photo, filename: 'martial.png', content_type: 'image/png')

puts 'Create Tamara ...'
tamara = User.create(first_name: "Tamara", last_name: "De Gaetano", email: "tamara@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
# tamara_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630192998/Capture_d_e%CC%81cran_2021-08-29_a%CC%80_01.23.12_l7nbxj.png')
# tamara.photo.attach(io: tamara_photo, filename: 'tamara.png', content_type: 'image/png')

puts 'Create Anna ...'
anna = User.create(first_name: "Anna", last_name: "Bozio", email: "anna@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
# anna_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630193066/Capture_d_e%CC%81cran_2021-08-29_a%CC%80_01.24.20_fsic0j.png')
# anna.photo.attach(io: anna_photo, filename: 'anna.png', content_type: 'image/png')

puts 'Create Thibault ...'
thibault = User.create(first_name: "Thibault", last_name: "Lenclos", email: "thibault@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# thibault_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630193143/PortraitsLeWagon_0721_By_BenoitBillard-588_bfobfa.jpg')
# thibault.photo.attach(io: thibault_photo, filename: 'thibault.png', content_type: 'image/png')

puts 'Create Carole ...'
carole = User.create(first_name: "Carole", last_name: "Valentin", email: "carole@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
# carole_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630193311/PortraitsLeWagon_0721_By_BenoitBillard-601_aibljc.jpg')
# carole.photo.attach(io: carole_photo, filename: 'carole.png', content_type: 'image/png')

puts 'Create Estelle ...'
estelle = User.create(first_name: "estelle", last_name: "Cirilo", email: "estelle@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
# estelle_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630193472/PortraitsLeWagon_0721_By_BenoitBillard-630_jx1exh.jpg')
# estelle.photo.attach(io: estelle_photo, filename: 'estelle.png', content_type: 'image/png')

puts 'Create Daniela ...'
daniela = User.create(first_name: "Daniela", last_name: "Mock-Zubia", email: "daniela@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
daniela_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630193955/PortraitsLeWagon_0721_By_BenoitBillard-734_drvdkw.jpg')
daniela.photo.attach(io: daniela_photo, filename: 'daniela.png', content_type: 'image/png')

puts 'Create Jean ...'
jean = User.create(first_name: "Jean", last_name: "Thomassin", email: "jean@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# jean_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630194110/PortraitsLeWagon_0721_By_BenoitBillard-718_ocfmzd.jpg')
# jean.photo.attach(io: jean_photo, filename: 'jean.png', content_type: 'image/png')

puts 'Create Ornella ...'
ornella = User.create(first_name: "Ornella", last_name: "Bissessur", email: "ornella@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
# ornella_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630194170/PortraitsLeWagon_0721_By_BenoitBillard-699_q9ya6e.jpg')
# ornella.photo.attach(io: ornella_photo, filename: 'ornella.png', content_type: 'image/png')

puts 'Create Tristan ...'
tristan = User.create(first_name: "Tristan", last_name: "Monteiro", email: "tristan@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# tristan_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630194326/PortraitsLeWagon_0721_By_BenoitBillard-688_jpch6m.jpg')
# tristan.photo.attach(io: tristan_photo, filename: 'tristan.png', content_type: 'image/png')

puts 'Create Walid ...'
walid = User.create(first_name: "Walid", last_name: "Monteiro", email: "walid@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# walid_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630194562/PortraitsLeWagon_0721_By_BenoitBillard-656_ykooru.jpg')
# walid.photo.attach(io: walid_photo, filename: 'walid.png', content_type: 'image/png')

puts 'Create Clémence ...'
clemence = User.create(first_name: "Clémence", last_name: "Chalot", email: "clemence@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
# clemence_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630194776/PortraitsLeWagon_0721_By_BenoitBillard-637_qttvog.jpg')
# clemence.photo.attach(io: clemence_photo, filename: 'clemence.png', content_type: 'image/png')

puts 'Create Thibault Baissac...'
bthibault = User.create(first_name: "Thibault", last_name: "Baissac", email: "bthibault@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# bthibault_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630194832/Capture_d_e%CC%81cran_2021-08-29_a%CC%80_01.53.45_e1k8kc.png')
# bthibault.photo.attach(io: bthibault_photo, filename: 'bthibault.png', content_type: 'image/png')

puts 'Create Quentin'
quentin = User.create(first_name: "Quentin", last_name: "Peschard", email: "quentin@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# quentin_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630195070/PortraitsLeWagon_0721_By_BenoitBillard-390_izkn7r.jpg')
# quentin.photo.attach(io: quentin_photo, filename: 'quentin.png', content_type: 'image/png')

puts 'Create Adrien'
adrien = User.create(first_name: "Adrien", last_name: "Bartolini", email: "adrien@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# adrien_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630195115/PortraitsLeWagon_0721_By_BenoitBillard-368_uphlhr.jpg')
# adrien.photo.attach(io: adrien_photo, filename: 'adrien.png', content_type: 'image/png')

puts 'Create Stephane'
stephane = User.create(first_name: "Stephane", last_name: "Mouillat", email: "stephane@gmail.com", phone_number: "0638393714", password: "123456", gender: "homme", role: "client")
# stephane_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630195180/PortraitsLeWagon_0721_By_BenoitBillard-355_mmcq5f.jpg')
# stephane.photo.attach(io: stephane_photo, filename: 'stephane.png', content_type: 'image/png')

puts 'Create Marly ...'
marly = User.create(first_name: "Clémence", last_name: "Chalot", email: "marly@gmail.com", phone_number: "0638393714", password: "123456", gender: "femme", role: "client")
# marly_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630195255/60466088_p9szlg.png')
# marly.photo.attach(io: marly_photo, filename: 'marly.png', content_type: 'image/png')

puts "Ok Clients !"
puts '>> Owner...' # ***************************************************************************************************

puts 'Create Bruno...'
bruno = User.create(first_name: "Bruno", last_name: "Goncalves", email: "bruno@aircut.fr", phone_number: "0648593714", password: "123456", gender: "homme", role: "barber")
bruno_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630193567/Capture_d_e%CC%81cran_2021-08-29_a%CC%80_01.32.43_wio9av.png')
bruno.photo.attach(io: bruno_photo, filename: 'bruno.png', content_type: 'image/png')

puts 'Create Ricardo...'
ricardo = User.create(first_name: "Ricardo", last_name: "Dupot", email: "ricardo@aircut.fr", phone_number: "0648593714", password: "123456", gender: "homme", role: "barber")
ricardo_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630193247/PortraitsLeWagon_0721_By_BenoitBillard-600_hhfpnb.jpg')
ricardo.photo.attach(io: ricardo_photo, filename: 'ricardo.png', content_type: 'image/png')

puts 'Create Gwen...'
gwen = User.create(first_name: "Gwen", last_name: "Marie", email: "gwen@aircut.fr", phone_number: "0648593714", password: "123456", gender: "homme", role: "barber")
gwen_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630190701/PortraitsLeWagon_0721_By_BenoitBillard-413_m4dfxv.jpg')
gwen.photo.attach(io: gwen_photo, filename: 'gwen.png', content_type: 'image/png')

puts "Create O'neal..."
oneal = User.create(first_name: "O'neal", last_name: "Maoukola", email: "oneal@aircut.fr", phone_number: "0673869727", password: "123456", gender: "homme", role: "barber")
# oneal_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630189536/PortraitsLeWagon_0721_By_BenoitBillard-298_r7jtn6.jpg')
# oneal.photo.attach(io: oneal_photo, filename: 'oneal.png', content_type: 'image/png')

puts "Create Rahim..."
rahim = User.create(first_name: "Rahim", last_name: "Pauillac", email: "rahim@aircut.fr", phone_number: "0673869727", password: "123456", gender: "homme", role: "barber")
# rahim_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630191048/Capture_d_e%CC%81cran_2021-08-29_a%CC%80_00.50.28_se5dft.png')
# rahim.photo.attach(io: rahim_photo, filename: 'rahim.png', content_type: 'image/png')

puts "Create Anne..."
anne = User.create(first_name: "Anne", last_name: "Barois", email: "anne@aircut.fr", phone_number: "0673869727", password: "123456", gender: "femme", role: "barber")
# anne_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630191189/PortraitsLeWagon_0721_By_BenoitBillard-435_bnapcu.jpg')
# anne.photo.attach(io: anne_photo, filename: 'anne.png', content_type: 'image/png')

puts "Create Mica..."
micka = User.create(first_name: "Mickael", last_name: "Gaspard", email: "mica@aircut.fr", phone_number: "0673869727", password: "123456", gender: "homme", role: "barber")
# micka_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630191473/PortraitsLeWagon_0721_By_BenoitBillard-459_ssxe6p.jpg')
# micka.photo.attach(io: micka_photo, filename: 'micka.png', content_type: 'image/png')

puts "Create Dorien..."
dorien = User.create(first_name: "Dorien", last_name: "Reynders", email: "dorien@aircut.fr", phone_number: "0673869727", password: "123456", gender: "femme", role: "barber")
# dorien_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630191882/PortraitsLeWagon_0721_By_BenoitBillard-508_zsvoan.jpg')
# dorien.photo.attach(io: dorien_photo, filename: 'dorien.png', content_type: 'image/png')

puts "Create Axel..."
axel = User.create(first_name: "Axel", last_name: "Burtz", email: "axel@aircut.fr", phone_number: "0673869727", password: "123456", gender: "homme", role: "barber")
# axel_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630192402/Capture_d_e%CC%81cran_2021-08-29_a%CC%80_01.13.11_bdx3l7.png')
# axel.photo.attach(io: axel_photo, filename: 'axel.png', content_type: 'image/png')

puts "Create Diane..."
diane = User.create(first_name: "Diane", last_name: "Orlac'h", email: "diane@aircut.fr", phone_number: "0673869727", password: "123456", gender: "femme", role: "barber")
# diane_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630193437/PortraitsLeWagon_0721_By_BenoitBillard-618_jyb5m8.jpg')
# diane.photo.attach(io: diane_photo, filename: 'diane.png', content_type: 'image/png')

puts "Create Benoit..."
benoit = User.create(first_name: "Benoit", last_name: "Jeanjoseph", email: "benoit@aircut.fr", phone_number: "0673869727", password: "123456", gender: "homme", role: "barber")
# benoit_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630193871/PortraitsLeWagon_0721_By_BenoitBillard-713_bewmmb.jpg')
# benoit.photo.attach(io: benoit_photo, filename: 'benoit.png', content_type: 'image/png')

puts "Create Raphaël..."
raphael = User.create(first_name: "Raphaël", last_name: "Kalinowski", email: "raphael@aircut.fr", phone_number: "0673869727", password: "123456", gender: "homme", role: "barber")
# raphael_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630194443/PortraitsLeWagon_0721_By_BenoitBillard-681_cndvph.jpg')
# raphael.photo.attach(io: raphael_photo, filename: 'raphael.png', content_type: 'image/png')

puts "Create Andréa Abbou..."
aandrea = User.create(first_name: "Andréa", last_name: "Abbou", email: "aandrea@aircut.fr", phone_number: "0673869727", password: "123456", gender: "homme", role: "barber")
# aandrea_photo = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630194693/PortraitsLeWagon_0721_By_BenoitBillard-646_io5cxp.jpg')
# aandrea.photo.attach(io: aandrea_photo, filename: 'aandrea.png', content_type: 'image/png')

puts 'Ok Owners!'
puts '>> Ok Users!' # **************************************************************************************************

puts '>> Create BarberShops...' # **************************************************************************************

puts 'Create Le Loft...'
le_loft = BarberShop.create(name: "Le Loft", address: "193 Rue de Crimée, 75019 Paris", remote: false, opening_days: [2, 3, 4, 5, 6], closing_days: [0, 1], opening_hours: ["08:00", "19:00"], phone_number: "0143578420", user: bruno)
file0 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196333/60281895_118647909109104_2390819617547872176_n_hlpo7p.jpg')
le_loft.photos.attach(io: file0, filename: 'nes.png', content_type: 'image/png')
file1 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196333/83421820_819504878552350_2528735426499366713_n_zwfl8d.jpg')
le_loft.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
file2 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196333/218374274_548773342946295_6084259345117551727_n_su8xij.jpg')
le_loft.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
file3 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196333/159865214_1509000059439458_6007221951981237019_n_ke2no0.jpg')
le_loft.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
file4 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196332/60065867_593471184481992_7244846480578544616_n_h5rmll.jpg')
le_loft.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
file5 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196333/100087145_109854883928670_4987477385418618609_n_irofnc.jpg')
le_loft.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
file6 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196332/94890959_1837902099676681_6532988507996967766_n_iv6rev.jpg')
le_loft.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
le_loft.save!

puts 'Create Barbes BarberShop...'
barbes_barber = BarberShop.create(name: "Barbes Barber Shop", address: "36 rue de la Charbonnière 75018 Paris", remote: false, opening_days: [2, 3, 4, 5, 6], closing_days: [0, 1], opening_hours: ["08:00", "19:00"], phone_number: "0143578420", user: oneal)
file1 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196904/85043998_630044161131752_6086941935936272674_n_mngbcr.jpg')
barbes_barber.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
file2 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196904/159461383_467113237872322_4740289791941848095_n_gamlvv.jpg')
barbes_barber.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
file3 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196904/121091299_1123487628045283_2724903855974735926_n_q4xaaa.jpg')
barbes_barber.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
file4 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196904/139957480_910281366462231_4776562938135045990_n_f0mjer.jpg')
barbes_barber.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
file5 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196904/89359244_120151569570206_8674898000823805656_n_mkkf1v.jpg')
barbes_barber.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
file6 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196904/239429834_524334472191336_9206666044595112166_n_lzvgds.jpg')
barbes_barber.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
file7 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630196904/121010353_975764699593149_5295583209495846083_n_zkknpi.jpg')
barbes_barber.portfolios.attach(io: file7, filename: 'nes.png', content_type: 'image/png')
barbes_barber.save!

puts 'Create 235th Barberstreet...'
barber_street = BarberShop.create(name: "235th Barber Street", address: "25 boulevard du temple, Paris", remote: false, opening_days: [2, 3, 4, 5, 6], closing_days: [0, 1], opening_hours: ["08:00", "19:00"], phone_number: "0143578420", user: gwen)
file1 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630197814/e000e950f397110d534cdc0375418ff7_kfkxos.png')
barber_street.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
file2 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630197814/123850089_120299963020303_2174107557210075674_n_s4ciux.jpg')
barber_street.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
file3 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630197814/106013823_644366949621133_3042054075000774073_n_c95bmi.jpg')
barber_street.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
file4 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630197814/119995554_324429502179320_4124826931189148647_n_z4mhwe.jpg')
barber_street.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
file5 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630197814/118690910_605410806816034_4806375566724745166_n_iyourl.jpg')
barber_street.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
file6 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630197815/127711971_374090853673247_3240304744496115590_n_gqc2lu.jpg')
barber_street.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
file7 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630197815/131977598_891393731604872_7348389368098985683_n_uo8xrk.jpg')
barber_street.portfolios.attach(io: file7, filename: 'nes.png', content_type: 'image/png')
barber_street.save!

# puts 'Create Chez Ginette...'
# chez_ginette = BarberShop.create(name: "Chez Ginette", address: "92 rue Saint-Maur 75011 Paris", remote: false, opening_days: [2, 3, 4, 5, 6], closing_days: [0, 1], opening_hours: ["08:00", "19:00"], phone_number: "0143578420", user: aandrea)
# file1 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235848/19425055_1823915407926116_549866314806591488_n_kct6mh.jpg')
# chez_ginette.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
# file2 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235848/147285712_779266606015604_8278282685700591519_n_gm5b0o.jpg')
# chez_ginette.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
# file3 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235848/163324310_2561674560806405_3576701263983415628_n_vkxlze.jpg')
# chez_ginette.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
# file4 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235848/141119815_1139154913191018_1225381972405680285_n_wkmslw.jpg')
# chez_ginette.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
# file5 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235848/199246745_192614856072404_1313079733274839405_n_jmmvde.jpg')
# chez_ginette.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
# file6 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235848/148867217_428586141791251_2044507491608283699_n_how35n.jpg')
# chez_ginette.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
# file7 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235848/21372419_1863524447298629_3725630653195091968_n_wovrvq.jpg')
# chez_ginette.portfolios.attach(io: file7, filename: 'nes.png', content_type: 'image/png')
# chez_ginette.save!

# puts 'Create La Fabrique du Barbier...'
# fabrique_barbier = BarberShop.create(name: "la fabrique du barbier", address: "48 avenue Parmentier 75011 Paris", remote: false, opening_days: [2, 3, 4, 5, 6], closing_days: [0, 1], opening_hours: ["08:00", "19:00"], phone_number: "0143578420", user: raphael)
# file1 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630236378/54513472_434714960615600_4566258248230641053_n_eiqdi0.jpg')
# fabrique_barbier.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
# file2 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630236378/161183945_5657882437557014_3118596535305460499_n_tizuu4.jpg')
# fabrique_barbier.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
# file3 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630236378/56600014_179129213086938_8603465694517778467_n_kclvhr.jpg')
# fabrique_barbier.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
# file4 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630236378/54513777_449695419170017_6604703189482963927_n_c5wgnx.jpg')
# fabrique_barbier.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
# file5 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630236378/225193784_2888630458132931_3474282452227338118_n_drlrby.jpg')
# fabrique_barbier.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
# file6 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630236378/54446798_2305854626323372_3290491206406902808_n_grxycp.jpg')
# fabrique_barbier.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
# file7 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630236378/70506190_2507360009500926_7422880321855644188_n_f9wnoh.jpg')
# fabrique_barbier.portfolios.attach(io: file7, filename: 'nes.png', content_type: 'image/png')
# fabrique_barbier.save!

puts 'Create Groomers Lab...'
groomers_lab = BarberShop.create(name: "Groomers Lab", address: "22 rue Saint-Sauveur, 75002 Paris", remote: false, opening_days: [2, 3, 4, 5, 6], closing_days: [0, 1], opening_hours: ["08:00", "19:00"], phone_number: "0143578420", user: ricardo)
file1 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235197/160665572_960878401322082_7387677801624201175_n_shzf9p.jpg')
groomers_lab.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
file2 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235198/179079625_211068043834476_7442340714166392203_n_aoayv3.jpg')
groomers_lab.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
file3 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235197/97359280_132747875056062_5820397732163643495_n_yys1au.jpg')
groomers_lab.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
file4 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235197/181066701_468315437737552_1675293365656050071_n_b2vjzf.jpg')
groomers_lab.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
file5 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235197/116427765_341663010568593_7699962659529081065_n_kdzztc.jpg')
groomers_lab.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
file6 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235197/89842911_769674213556408_1816740328245539122_n_grcndc.jpg')
groomers_lab.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
file7 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630235197/173869637_496622548317515_5019961998707017519_n_tacxlk.jpg')
groomers_lab.portfolios.attach(io: file7, filename: 'nes.png', content_type: 'image/png')
groomers_lab.save!

# puts 'Create Les Muses de Paris...'
# muses_paris = BarberShop.create(name: "Les Muses de Paris", address: "7 rue de la Folie Méricourt 75011 Paris", remote: false, opening_days: %w[mardi mercredi jeudi vendredi samedi], closing_days: %w[dimanche lundi], opening_hours: '10:00 - 19:00', phone_number: "0143578420", user: anne)
# file1 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630255504/128611333_1017417372096059_5427433182090816740_n_d9zwvy.jpg')
# muses_paris.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
# file2 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630255504/117686790_310429653529174_5994249439903792464_n_xrhavo.jpg')
# muses_paris.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
# file3 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630255504/120923128_1509732492557270_2082077265362896323_n_zym1ft.jpg')
# muses_paris.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
# file4 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630255504/120369319_120339702956350_8000463976015980935_n_nucckp.jpg')
# muses_paris.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
# file5 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630255504/56811556_146481546401392_7289317986160084036_n_msmgcz.jpg')
# muses_paris.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
# file6 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630255504/127625245_693831827933868_7502587138975867052_n_yxqobd.jpg')
# muses_paris.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
# file7 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630255505/202195222_268218095061918_1586111710750182932_n_mtbdnj.jpg')
# muses_paris.portfolios.attach(io: file7, filename: 'nes.png', content_type: 'image/png')
# file8 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630255505/163497078_442419720176127_6630973805201591507_n_mqqoi6.jpg')
# muses_paris.portfolios.attach(io: file8, filename: 'nes.png', content_type: 'image/png')
# file9 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630255505/210892860_182422460509026_6825919216547742359_n_eg6zhp.jpg')
# muses_paris.portfolios.attach(io: file9, filename: 'nes.png', content_type: 'image/png')
# file10 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630255505/170074414_757825294883796_8934725685543473917_n_tioijn.jpg')
# muses_paris.portfolios.attach(io: file10, filename: 'nes.png', content_type: 'image/png')
# muses_paris.save!

puts 'Lazerus...'
lazerus = BarberShop.create(name: "Le Lazerus", address: "75 Rue Oberkampf, 75011 Paris", remote: true, opening_days: [5, 6, 0], closing_days: [1, 2, 3, 4], opening_hours: ["17:00", "21:00"], phone_number: "0643578420", user: rahim)
file1 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630256669/22159093_353860515062143_2483913212299313152_n_x083ge.jpg')
lazerus.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
file2 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630256669/31104024_852019971668068_424075862397157376_n_tovwk8.jpg')
lazerus.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
file3 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630256669/54277521_622707781523583_5386538906267363310_n_hs42t1.jpg')
lazerus.portfolios.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
file4 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630256669/50583823_332272904287240_1620614940717667837_n_lmyspn.jpg')
lazerus.portfolios.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
file5 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630256669/31421684_2044155005799750_5067805880200724480_n_whz9li.jpg')
lazerus.portfolios.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
file6 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630256669/53584940_2235062263428002_440338835359031880_n_g6k4xs.jpg')
lazerus.portfolios.attach(io: file6, filename: 'nes.png', content_type: 'image/png')
file7 = URI.open('https://res.cloudinary.com/ricawdo/image/upload/v1630256669/26066759_377137346031913_7887130856924381184_n_i738d2.jpg')
lazerus.portfolios.attach(io: file7, filename: 'nes.png', content_type: 'image/png')

puts 'Ok Barbershops! 💈' # *******************************************************************************************

puts 'Create Services, ShopServices and link to BarberShops...' # ******************************************************
puts 'Create Services for gender:homme' # ******************************************************************************

puts 'Coupe Dégradé'
degrade = Service.create(name: "Dégradé", gender: "homme")
shop_degrade_street = ShopService.create(price: 25, duration: 40, description: "Dégradé (haut ou bas), à la tondeuse, finition aux ciseaux.", barber_shop_id: barber_street.id, service_id: degrade.id )
shop_degrade_barbes = ShopService.create(price: 15, duration: 30, description: "Dégradé (haut ou bas), à la tondeuse, finition aux ciseaux.", barber_shop_id: barbes_barber.id, service_id: degrade.id )
shop_degrade_loft = ShopService.create(price: 25, duration: 45, description: "Dégradé (haut ou bas), à la tondeuse, finition aux ciseaux.", barber_shop_id: le_loft.id, service_id: degrade.id )
shop_degrade_groomers = ShopService.create(price: 15, duration: 30, description: "Dégradé (haut ou bas), à la tondeuse, finition aux ciseaux.", barber_shop_id: groomers_lab.id, service_id: degrade.id )
# shop_degrade_fabrique = ShopService.create(price: 15, duration: 30, description: "Dégradé (haut ou bas), à la tondeuse, finition aux ciseaux.", barber_shop_id: fabrique_barbier.id, service_id: degrade.id )
shop_degrade_lazerus = ShopService.create(price: 15, duration: 30, description: "Dégradé (haut ou bas), à la tondeuse, finition aux ciseaux.", barber_shop_id: lazerus.id, service_id: degrade.id )

puts 'Create Formule Coupe Dégradé + Shampoing...'
degrade_shampoing = Service.create(name: "Formule Coupe Dégradé + Shampoing", gender: "homme")
shop_degrade_shampoing_loft = ShopService.create(price: 40, duration: 60, description: "Forfait dégradé (bas ou haut) + shampoing + coiffage", barber_shop_id: le_loft.id, service_id: degrade_shampoing.id )
shop_degrade_shampoing_barbes = ShopService.create(price: 40, duration: 60, description: "Forfait dégradé (bas ou haut) + shampoing + coiffage", barber_shop_id: barbes_barber.id, service_id: degrade_shampoing.id )
shop_degrade_shampoing_street = ShopService.create(price: 40, duration: 60, description: "Forfait dégradé (bas ou haut) + shampoing + coiffage", barber_shop_id: barber_street.id, service_id: degrade_shampoing.id )
shop_degrade_shampoing_groomers = ShopService.create(price: 40, duration: 60, description: "Forfait dégradé (bas ou haut) + shampoing + coiffage", barber_shop_id: groomers_lab.id, service_id: degrade_shampoing.id )
# shop_degrade_shampoing_fabrique = ShopService.create(price: 40, duration: 60, description: "Forfait dégradé (bas ou haut) + shampoing + coiffage", barber_shop_id: fabrique_barbier.id, service_id: degrade_shampoing.id )
shop_degrade_shampoing_lazerus = ShopService.create(price: 40, duration: 60, description: "Forfait dégradé (bas ou haut) + shampoing + coiffage", barber_shop_id: lazerus.id, service_id: degrade_shampoing.id )

puts 'Create Rasage de crâne lame...'
rasage_crane = Service.create(name: "Boule à Zéro à l'ancienne", gender: "homme")
shop_rasage_crane_loft = ShopService.create(price: 15, duration: 45, description: "Rasage de crâne à la lame", barber_shop_id: le_loft.id, service_id: rasage_crane.id )
shop_rasage_crane_barbes = ShopService.create(price: 10, duration: 15, description: "Rasage de crâne à la lame", barber_shop_id: barbes_barber.id, service_id: rasage_crane.id )
shop_rasage_crane_street = ShopService.create(price: 17, duration: 30, description: "Rasage de crâne à la lame", barber_shop_id: barber_street.id, service_id: rasage_crane.id )
shop_rasage_crane_groomers = ShopService.create(price: 17, duration: 30, description: "Rasage de crâne à la lame", barber_shop_id: groomers_lab.id, service_id: rasage_crane.id )
# shop_rasage_crane_fabrique = ShopService.create(price: 17, duration: 30, description: "Rasage de crâne à la lame", barber_shop_id: fabrique_barbier.id, service_id: rasage_crane.id )
shop_rasage_crane_lazerus = ShopService.create(price: 17, duration: 30, description: "Rasage de crâne à la lame", barber_shop_id: lazerus.id, service_id: rasage_crane.id )

puts 'Create Rasage à la tondeuse...'
rasage_crane_tondeuse = Service.create(name: "Boule à Zéro à la tondeuse", gender: "homme")
rasage_crane_tondeuse_loft = ShopService.create(price: 10, duration: 15, description: "Rasage de crâne à la tondeuse", barber_shop_id: le_loft.id, service_id: rasage_crane_tondeuse.id )
rasage_crane_tondeuse_barbes = ShopService.create(price: 10, duration: 15, description: "Rasage de crâne à la tondeuse", barber_shop_id: barbes_barber.id, service_id: rasage_crane_tondeuse.id )
rasage_crane_tondeuse_street = ShopService.create(price: 10, duration: 15, description: "Rasage de crâne à la tondeuse", barber_shop_id: barber_street.id, service_id: rasage_crane_tondeuse.id )
rasage_crane_tondeuse_groomers = ShopService.create(price: 10, duration: 15, description: "Rasage de crâne à la tondeuse", barber_shop_id: groomers_lab.id, service_id: rasage_crane_tondeuse.id )
# rasage_crane_tondeuse_fabrique = ShopService.create(price: 10, duration: 15, description: "Rasage de crâne à la tondeuse", barber_shop_id: fabrique_barbier.id, service_id: rasage_crane_tondeuse.id )
rasage_crane_tondeuse_lazerus = ShopService.create(price: 10, duration: 15, description: "Rasage de crâne à la tondeuse", barber_shop_id: lazerus.id, service_id: rasage_crane_tondeuse.id )

puts 'Create Massage cranien...'
massage_cranien = Service.create(name: "Massage cranien", gender: "homme")
massage_cranien_loft = ShopService.create(price: 30, duration: 60, description: "Stimule le cuir chevelu, soulage les maux de tête, libère les tensions accumulées", barber_shop_id: le_loft.id, service_id: massage_cranien.id )
massage_cranien_barbes = ShopService.create(price: 30, duration: 60, description: "Stimule le cuir chevelu, soulage les maux de tête, libère les tensions accumulées", barber_shop_id: barbes_barber.id, service_id: massage_cranien.id )
massage_cranien_street = ShopService.create(price: 30, duration: 60, description: "Stimule le cuir chevelu, soulage les maux de tête, libère les tensions accumulées", barber_shop_id: barber_street.id, service_id: massage_cranien.id )
massage_cranien_groomers = ShopService.create(price: 30, duration: 60, description: "Stimule le cuir chevelu, soulage les maux de tête, libère les tensions accumulées", barber_shop_id: groomers_lab.id, service_id: massage_cranien.id )
# massage_cranien_fabrique = ShopService.create(price: 30, duration: 60, description: "Stimule le cuir chevelu, soulage les maux de tête, libère les tensions accumulées", barber_shop_id: fabrique_barbier.id, service_id: massage_cranien.id )
massage_cranien_lazerus = ShopService.create(price: 15, duration: 30, description: "Stimule le cuir chevelu, soulage les maux de tête, libère les tensions accumulées", barber_shop_id: lazerus.id, service_id: massage_cranien.id )

puts 'Create Décoloration et teinture...'
deco_teinture = Service.create(name: "Forfait décoloration et teinture", gender: "homme")
deco_teinture_loft = ShopService.create(price: 15, duration: 30, description: "Forfait décoloration + teinture. Merci de prendre contact au préalable pour s'assurer de la disponibilité de la couleur désirée", barber_shop_id: le_loft.id, service_id: deco_teinture.id )
deco_teinture_barbes = ShopService.create(price: 15, duration: 30, description: "Forfait décoloration + teinture Merci de prendre contact au préalable pour s'assurer de la disponibilité de la couleur désirée", barber_shop_id: barbes_barber.id, service_id: deco_teinture.id )
deco_teinture_street = ShopService.create(price: 15, duration: 30, description: "Forfait décoloration + teinture Merci de prendre contact au préalable pour s'assurer de la disponibilité de la couleur désirée", barber_shop_id: barber_street.id, service_id: deco_teinture.id )
deco_teinture_groomers = ShopService.create(price: 15, duration: 30, description: "Forfait décoloration + teinture. Merci de prendre contact au préalable pour s'assurer de la disponibilité de la couleur désirée", barber_shop_id: groomers_lab.id, service_id: deco_teinture.id )
# deco_teinture_fabrique = ShopService.create(price: 15, duration: 30, description: "Forfait décoloration + teinture. Merci de prendre contact au préalable pour s'assurer de la disponibilité de la couleur désirée", barber_shop_id: fabrique_barbier.id, service_id: deco_teinture.id )
deco_teinture_lazerus = ShopService.create(price: 15, duration: 30, description: "Forfait décoloration + teinture. Merci de prendre contact au préalable pour s'assurer de la disponibilité de la couleur désirée", barber_shop_id: lazerus.id, service_id: deco_teinture.id )

puts 'Create Départ de locks..'
depart_locks = Service.create(name: "Départ de locks", gender: "homme")
depart_locks_loft = ShopService.create(price: 120, duration: 90, description: "Départ de locks sur cheveux court (10cm minimum) ", barber_shop_id: le_loft.id, service_id: depart_locks.id )
depart_locks_barbes = ShopService.create(price: 120, duration: 90, description: "Départ de locks sur cheveux court (10cm minimum) ", barber_shop_id: barbes_barber.id, service_id: depart_locks.id )
depart_locks_street = ShopService.create(price: 120, duration: 90, description: "Départ de locks sur cheveux court (10cm minimum) ", barber_shop_id: barber_street.id, service_id: depart_locks.id )
depart_locks_groomers = ShopService.create(price: 120, duration: 90, description: "Départ de locks sur cheveux court (10cm minimum) ", barber_shop_id: groomers_lab.id, service_id: depart_locks.id )
# depart_locks_fabrique = ShopService.create(price: 120, duration: 90, description: "Départ de locks sur cheveux court (10cm minimum) ", barber_shop_id: fabrique_barbier.id, service_id: depart_locks.id )
depart_locks_lazerus = ShopService.create(price: 120, duration: 90, description: "Départ de locks sur cheveux court (10cm minimum) ", barber_shop_id: lazerus.id, service_id: depart_locks.id )

# puts 'Create Services for gender:femme' # ******************************************************************************
# shampoing_long = Service.create(name: "Shampoing (cheveux longs)", gender: "femme")
# ShopService.create(price: 10, duration: 30, description: "Shampoing (cheveux longs) + Massage", barber_shop_id: chez_ginette.id, service_id: shampoing_long.id )
# ShopService.create(price: 20, duration: 30, description: "Shampoing (cheveux longs) + Massage", barber_shop_id: barber_street.id, service_id: shampoing_long.id )
# ShopService.create(price: 20, duration: 30, description: "Shampoing (cheveux longs) + Massage", barber_shop_id: groomers_lab.id, service_id: shampoing_long.id )

puts '>> Create Bookings, BookingServices and link to Services and Reviews...' # ***************************************
puts 'Create fakes booking for Lazerus.'

b_arthur = Booking.create(user_id: arthur.id, start_datetime: DateTime.new(2021, 9, 3, 19, 0), end_datetime: DateTime.new(2021, 9, 3, 20, 0), total_amount: 40)
BookingService.create(booking_id: b_arthur.id, shop_service_id: shop_rasage_crane_lazerus.id)

puts 'Create booking of Wadi...'
b_wadi = Booking.create(user_id: wadi.id, start_datetime: DateTime.new(2021, 9, 2, 14, 30), end_datetime: DateTime.new(2021, 9, 3, 15, 30), total_amount: 40)
BookingService.create(booking_id: b_wadi.id, shop_service_id: shop_rasage_crane_lazerus.id)
Review.create(rating: 5, comment: "Ma barbe est douce, mon crane est doux 🍑 Merci pour les travaux 🚧", user_id: wadi.id, booking_id: b_wadi.id)

puts 'Create booking of Benoit...'
b_benoit = Booking.create(user_id: benoit.id, start_datetime: DateTime.new(2021, 9, 1, 14, 30), end_datetime: DateTime.new(2021, 9, 3, 14, 30), total_amount: 40)
BookingService.create(booking_id: b_benoit.id, shop_service_id: shop_rasage_crane_lazerus.id)
Review.create(rating: 5, comment: "Ce magnifique dégradé va améliorer mon aérodynamisme 🏄🏾‍♂️ ", user_id: benoit.id, booking_id: b_benoit.id)

puts 'Create booking of Gwen...'
b_gwen = Booking.create(user_id: gwen.id, start_datetime: DateTime.new(2021, 9, 2, 14, 30), end_datetime: DateTime.new(2021, 8, 25, 14, 30), total_amount: 40)
BookingService.create(booking_id: b_gwen.id, shop_service_id: shop_rasage_crane_lazerus.id)
Review.create(rating: 4, comment: "Maintenant direction la Thaïlande 😎 !", user_id: gwen.id, booking_id: b_gwen.id)

puts 'Create booking of Bruno...'
b_bruno = Booking.create(user_id: bruno.id, start_datetime: DateTime.new(2021, 9, 1, 14, 30), end_datetime: DateTime.new(2021, 8, 25, 14, 30), total_amount: 40)
BookingService.create(booking_id: b_bruno.id, shop_service_id: shop_rasage_crane_lazerus.id)
Review.create(rating: 5, comment: "Le roi des dégradés ! 👑 ", user_id: bruno.id, booking_id: b_bruno.id)

puts 'Create booking of Andréa...'
b_aandrea = Booking.create(user_id: aandrea.id, start_datetime: DateTime.new(2021, 8, 31, 9, 30), end_datetime: DateTime.new(2021, 7, 20, 10, 30), total_amount: 40)
BookingService.create(booking_id: b_aandrea.id, shop_service_id: massage_cranien_lazerus.id)
Review.create(rating: 5, comment: "Que dire de plus ... la perfection #Ellii ♥️ ! ", user_id: aandrea.id, booking_id: b_aandrea.id)

puts 'Create booking of Rahim...'
b_rahim = Booking.create(user_id: rahim.id, start_datetime: DateTime.new(2021, 8, 31, 9, 30), end_datetime: DateTime.new(2021, 7, 15, 10, 30), total_amount: 40)
BookingService.create(booking_id: b_rahim.id, shop_service_id: massage_cranien_lazerus.id)
Review.create(rating: 5, comment: "Le roi des Boule à Z 👻 ! ", user_id: rahim.id, booking_id: b_rahim.id)

puts 'Create booking of Oneal...'
b_oneal = Booking.create(user_id: oneal.id, start_datetime: DateTime.new(2021, 8, 31, 9, 30), end_datetime: DateTime.new(2021, 7, 10, 10, 30), total_amount: 40)
BookingService.create(booking_id: b_oneal.id, shop_service_id: massage_cranien_lazerus.id)
Review.create(rating: 5, comment: "High Top au max ! 2.6.ZERO 🚃 ", user_id: oneal.id, booking_id: b_oneal.id)

puts 'Create booking of Dustin...'
b_dustin = Booking.create(user_id: dustin.id, start_datetime: DateTime.new(2021, 8, 30, 9, 30), end_datetime: DateTime.new(2021, 7, 7, 10, 30), total_amount: 40)
BookingService.create(booking_id: b_dustin.id, shop_service_id: massage_cranien_lazerus.id)
Review.create(rating: 4, comment: "I love this fade ! 💈", user_id: dustin.id, booking_id: b_dustin.id)

puts 'Create booking of Daniela...'
b_daniela = Booking.create(user_id: daniela.id, start_datetime: DateTime.new(2021, 7, 7, 11, 30), end_datetime: DateTime.new(2021, 7, 7, 12, 30), total_amount: 40)
BookingService.create(booking_id: b_daniela.id, shop_service_id: massage_cranien_groomers.id)
Review.create(rating: 3, comment: "Bonne coupe. La prestation a durée un peu plus lontemps que prévue.", user_id: daniela.id, booking_id: b_daniela.id)

puts 'Create booking of Amandine...'
b_amandine = Booking.create(user_id: amandine.id, start_datetime: DateTime.new(2021, 7, 4, 15, 30), end_datetime: DateTime.new(2021, 7, 3, 16, 30), total_amount: 40)
BookingService.create(booking_id: b_amandine.id, shop_service_id: shop_rasage_crane_street.id)
Review.create(rating: 3, comment: "Sympa  😁 ", user_id: amandine.id, booking_id: b_amandine.id)

puts 'Create booking of Lydia...'
b_lydia = Booking.create(user_id: lydia.id, start_datetime: DateTime.new(2021, 8, 4, 14, 30), end_datetime: DateTime.new(2021, 6, 30, 15, 30), total_amount: 40)
BookingService.create(booking_id: b_lydia.id, shop_service_id: shop_rasage_crane_loft.id)
Review.create(rating: 5, comment: "Très bon salon, je recommande ! 👌", user_id: lydia.id, booking_id: b_lydia.id)

puts 'Create booking of Ricardo...'
b_ricardo = Booking.create(user_id: ricardo.id, start_datetime: DateTime.new(2021, 6, 6, 10, 30), end_datetime: DateTime.new(2021, 6, 6, 11, 30), total_amount: 15)
BookingService.create(booking_id: b_ricardo.id, shop_service_id: shop_degrade_barbes.id)
Review.create(rating: 5, comment: "High Top au max ! 2.6.ZERO 🚃 ", user_id: ricardo.id, booking_id: b_ricardo.id)


Review.create(rating: 5, comment: "Très pro, je recommande 🧘", user_id: benoit.id, booking_id: b_lydia.id)
Review.create(rating: 4, comment: "Je recommande vivement 🧘", user_id: daniela.id, booking_id: b_daniela)
Review.create(rating: 4, comment: "Je vais souvent revenir 🧘", user_id: axel.id, booking_id: b_dustin)
Review.create(rating: 5, comment: "J'aime trop 🧘", user_id: gwen.id, booking_id: b_daniela.id)
Review.create(rating: 5, comment: "Allez-y les yeux fermés 🧘", user_id: rahim.id, booking_id: b_dustin.id)
Review.create(rating: 3, comment: "J'adore le style 🧘", user_id: diane.id, booking_id: b_daniela.id)
Review.create(rating: 5, comment: "La classe 🧘", user_id: daniela.id, booking_id: b_daniela.id)
Review.create(rating: 4, comment: "J'aime beaucoup 🧘", user_id: daniela.id, booking_id: b_daniela.id)
Review.create(rating: 5, comment: "Je vais revenir c'est certain ! 🧘", user_id: bruno.id, booking_id: b_lydia.id)
Review.create(rating: 4, comment: "Toujours aussi bien 🧘", user_id: ricardo.id, booking_id: b_daniela.id)
Review.create(rating: 5, comment: "Super ! 🧘", user_id: dorien.id, booking_id: b_daniela.id)

puts 'Ok bookings and reviews!' # **************************************************************************************

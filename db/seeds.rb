# Cleaning DB
puts 'cleaning DB'
Planet.destroy_all
User.destroy_all
Location.destroy_all

require "open-uri"

# Seed Images Users
puts 'seeds img user'
img_palpatine = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639740248/RENT%20A%20PLANET/palpatine_qqukj4.jpg')
img_jabba = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639740249/RENT%20A%20PLANET/jabba_hhuta1.png')
img_padme = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639740248/RENT%20A%20PLANET/padme_hztsbf.jpg')
img_yoda = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639740248/RENT%20A%20PLANET/yoda_qzauzo.jpg')
img_sidious = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639740249/RENT%20A%20PLANET/sidious_c5fyzk.jpg')
img_luke = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639740249/RENT%20A%20PLANET/luke_mgi7qa.jpg')
img_ben = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639740249/RENT%20A%20PLANET/ben_jqo49g.jpg')
img_solo = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639740248/RENT%20A%20PLANET/solo_yfzijf.jpg')

# Seed Users
puts 'seeds user'
palpatine = User.create!(email: 's.palpatine@senate.org', password: 'IamDS!', password_confirmation: 'IamDS!', first_name: 'Seev', last_name: 'Palpatine', biographie: 'Ancien sénateur de Naboo, élu démocratiquement comme Chancelier Suprême de la République Galactique.')
palpatine.photo.attach(io: img_palpatine, filename: 'palpatine_qqukj4.jpg', content_type: 'image/jpg')

jabba = User.create!(email: 'jabba@hutt.tat', password: 'Irule!', password_confirmation: 'Irule!', first_name: 'Jabba Desilijic', last_name: 'Tiure', biographie: 'Maître incontesté et incontestable de Tatooine')
jabba.photo.attach(io: img_jabba, filename: 'jabba_hhuta1.png', content_type: 'image/png')

padme = User.create!(email: 'amidala@reine.nb', password: 'Peace:)', password_confirmation: 'Peace:)', first_name: 'Padme', last_name: 'Amidala', biographie: 'Ancienne Reine de Naboo désormais sénatrice de cette planète')
padme.photo.attach(io: img_padme, filename: 'padme_hztsbf.jpg', content_type: 'image/jpg')

yoda = User.create!(email: 'yoda@jedi.org', password: 'May4thbewithyou', password_confirmation: 'May4thbewithyou', first_name: 'Minch', last_name: 'Yoda', biographie: 'Maître Jedi')
yoda.photo.attach(io: img_yoda, filename: 'yoda_qzauzo.jpg', content_type: 'image/jpg')

sidious = User.create!(email: 'first_sith@darkside.org', password: 'IamCSP', password_confirmation: 'IamCSP', first_name: 'Darth', last_name: 'Sidious')
sidious.photo.attach(io: img_sidious, filename: 'sidious_c5fyzk.jpg', content_type: 'image/jpg')

luke = User.create!(email: 'l.skywalker@farmer.tat', password: 'IhavetheForce', password_confirmation: 'IhavetheForce', first_name: 'Luke', last_name: 'Skywalker')
luke.photo.attach(io: img_luke, filename: 'luke_mgi7qa.jpg', content_type: 'image/jpg')

ben = User.create!(email: 'kenobi@jedi.org', password: 'HelloThere', password_confirmation: 'HelloThere', first_name: 'Obi-Wan', last_name: 'Kenobi')
ben.photo.attach(io: img_ben, filename: 'ben_jqo49g.jpg', content_type: 'image/jpg')

solo = User.create!(email: 'solo@hutt.tat', password: 'IamtheBest', password_confirmation:'IamtheBest', first_name: 'Han', last_name: 'Solo')
solo.photo.attach(io: img_solo, filename: 'solo_yfzijf.jpg', content_type: 'image/jpg')


# Seed Images Planets
puts 'seeds img planets'
img_coruscant = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651133/RENT%20A%20PLANET/Coruscant_vsgups.jpg')
img_naboo = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651134/RENT%20A%20PLANET/Naboo_ribu2g.png')
img_tatooine = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651134/RENT%20A%20PLANET/Tatooine_f0q2g0.png')
img_rakata = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639652093/RENT%20A%20PLANET/Rakata_Prime_vmdjsb.jpg')
img_alderaan = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651133/RENT%20A%20PLANET/Alderaan_dgyvvv.jpg')
img_dagobah = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651133/RENT%20A%20PLANET/Dagobah_cddnu5.jpg')
img_ilum = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651133/RENT%20A%20PLANET/Ilum_akoaak.png')
img_ns = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651134/RENT%20A%20PLANET/Nar_Shaddaa_turbtx.png')
img_kashyyyk = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651134/RENT%20A%20PLANET/Kashyyyk_sxe5hu.png')
img_korriban = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651133/RENT%20A%20PLANET/Korriban_paai1z.jpg')
img_hoth = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651134/RENT%20A%20PLANET/Hoth_ryijjg.png')
img_kamino = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651133/RENT%20A%20PLANET/Kamino_lpnkas.jpg')
img_bespin = URI.open('https://res.cloudinary.com/dafgezb33/image/upload/v1639651133/RENT%20A%20PLANET/Bespin_dcdnzg.jpg')

# Seed Planets
puts 'seeds planets'
coruscant = Planet.create!(name: 'Coruscant', planet_type: 'Cité', safety: 2, prix: 500, localisation: 'Centre', user: palpatine, description: 'Cité-Planète située au centre de la galaxie et siège du pouvoir de la République avec le Sénat galactique et le Temple Jedi. Multi-raciale, vous trouverez obligatoirement un quartier à votre convenance.')
coruscant.photo.attach(io: img_coruscant, filename: 'Coruscant_vsgups.jpg', content_type: 'image/jpg')

naboo = Planet.create!(name: 'Naboo', planet_type: 'Forêt', safety: 3, prix: 400, localisation: 'Bordure Intérieure', user: padme, description: "Planète verdoyante située dans la bordure médiane de la Galaxie. Vous pourrez y admirer ses paysages, sa capitale à l'architecture délicate et réputée et les vestiges de la bataille contre l'armée de la Fédération du Commerce.")
naboo.photo.attach(io: img_naboo, filename: 'Naboo_ribu2g.png', content_type: 'image/png')

tatooine = Planet.create!(name: 'Tatooine', planet_type: 'Désert', safety: 1, prix: 100, localisation: 'Bordure Extérieure', user: jabba, description: "Planète la plus accueillante de toute la galaxie. Vosu pouvez tous y venir, on vous trouvera une place. Magnifiques couchers de soleils. Offres d'emploi disponibles")
tatooine.photo.attach(io: img_tatooine, filename: 'Tatooine_f0q2g0.png', content_type: 'image/png')

rakata = Planet.create!(name: 'Rakata Prime', planet_type: 'Sauvage', safety: 1, prix: 600, localisation: 'Régions Inconnues', user: sidious, description: "Ancienne capitale des Rakatas. Magnifiques ruines renfermant des secrets technologiques et des secrets sur la Force. Idéal pour explorateurs.")
rakata.photo.attach(io: img_rakata, filename: 'Rakata_Prime_vmdjsb.jpg', content_type: 'image/jpg')

alderaan = Planet.create!(name: 'Alderaan', planet_type: 'Mixte', safety: 3, prix: 50, localisation: 'Centre', user: palpatine, description: "EN SOLDE - Magnifique planète des mondes du noyau, aux multiples climats et paysages. Réputée pour son vin exceptionnelle.")
alderaan.photo.attach(io: img_alderaan, filename: 'Alderaan_dgyvvv.jpg', content_type: 'image/jpg')

dagobah = Planet.create!(name: 'Dagobah', planet_type: 'Mixte', safety: 1, prix: 200, localisation: 'Bordure Extérieure', user: yoda, description: "Planète marécageuse. Atmosphère difficile, attention au dérèglement du vaisseau. Présence Côté Obscur. Pour courageux avertis")
dagobah.photo.attach(io: img_dagobah, filename: 'Dagobah_cddnu5.jpg', content_type: 'image/jpg')

ilum = Planet.create!(name: 'Ilum', planet_type: 'Glacée', safety: 2, prix: 800, localisation: 'Régions Inconnues', user: yoda, description: "Planète inhabitée où se trouve les rarissimes cristaux Kyber, coeurs des sabres lasers. Paysages de glace et cristallins à couper le souffle.")
ilum.photo.attach(io: img_ilum, filename: 'Ilum_akoaak.png', content_type: 'image/png')

ns = Planet.create!(name: 'Nar Shaddaa', planet_type: 'Cité', safety: 1, prix: 700, localisation: 'Bordure Extérieure', user: jabba, description: "Planète-cité lumineuse où vosu pourrez trouver tout ce que vous cherchez et accomplir tous vps rêves. Vous n'en repartirez plus !")
ns.photo.attach(io: img_ns, filename: 'Nar_Shaddaa_turbtx.png', content_type: 'image/png')

kashyyyk = Planet.create!(name: 'Kashyyyk', planet_type: 'Forêt', safety: 3, prix: 200, localisation: 'Bordure Intérieure', user: yoda, description: "Planète d'origine de la race des Wookies recouverte d'uen immense forêt. On y célèbre les traditionnelles et célèbres 'Fêtes de la Vie'.")
kashyyyk.photo.attach(io: img_kashyyyk, filename: 'Kashyyyk_sxe5hu.png', content_type: 'image/png')

korriban = Planet.create!(name: 'Korriban', planet_type: 'Désert', safety: 1, prix: 1000, localisation: 'Régions Inconnues', user: sidious, description: "Planète d'origine des siths. Désert où ne trouve que de la faune et flore adaptées au Côté Obscur, des anciens tombeaux et quelques fantômes siths.")
korriban.photo.attach(io: img_korriban, filename: 'Korriban_paai1z.jpg', content_type: 'image/jpg')

hoth = Planet.create!(name: 'Hoth', planet_type: 'Glacée', safety: 2, prix: 600, localisation: 'Bordure Extérieure', user: padme, description: "Planète gelée du système du même nom. Les plus grands dangers : les températures et les wampas. Amateurs de ski vous serez enchantés.")
hoth.photo.attach(io: img_hoth, filename: 'Hoth_ryijjg.png', content_type: 'image/png')

kamino = Planet.create!(name: 'Kamino', planet_type: 'Aquatique', safety: 3, prix: 800, localisation: 'Bordure Intérieure', user: palpatine, description: "Planète-Océan sur laquelle se trouvent des citées flottantes. Spécialité locale : le clonage, qu'il soit de masse ou spécialisé.")
kamino.photo.attach(io: img_kamino, filename: 'Kamino_lpnkas.jpg', content_type: 'image/jpg')

bespin = Planet.create!(name: 'Bespin', planet_type: 'Gazeuse', safety: 3, prix: 500, localisation: 'Bordure Extérieure', user: padme, description: "Planète gazeuse fournissant l'indispensable gaz Tibanna. La Cité des Nuages vous y accueillera et propose même, pour les plus chanceux d'entre-vous deux casinos.")
bespin.photo.attach(io: img_bespin, filename: 'Bespin_dcdnzg.jpg', content_type: 'image/jpg')

# Seed Locations
puts 'seeds locations'
Location.create!(planet: dagobah, user: luke, date_arrivee: 20241125, date_depart: 20241222, tarif: 27000)
Location.create!(planet: tatooine, user: ben, date_arrivee: 20220114, date_depart: 20220129, tarif: 1500)
Location.create!(planet: ns, user: solo, date_arrivee: 20220516, date_depart: 20220519, tarif: 2100)
Location.create!(planet: ilum, user: sidious, date_arrivee: 20211224, date_depart: 20211228, tarif: 3200)
Location.create!(planet: korriban, user: yoda, date_arrivee: 20230413, date_depart: 20230513, tarif: 24000)

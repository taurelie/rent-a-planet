# Cleaning DB
puts 'cleaning DB'
Planet.destroy_all
User.destroy_all

# Seed Users
puts 'seeds user'
palpatine = User.create!(email: 's.palpatine@senate.org', password: 'IamDS!', encrypted_password: 'IamDS!', first_name: 'Seev', last_name: 'Palpatine', biographie: 'Ancien sénateur de Naboo, élu démocratiquement comme Chancelier Suprême de la République Galactique.')
jabba = User.create!(email: 'jabba@hutt.tat', password: 'Irule!', encrypted_password: 'Irule!', first_name: 'Jabba Desilijic', last_name: 'Tiure', biographie: 'Maître incontesté et incontestable de Tatooine')
padme = User.create!(email: 'amidala@reine.nb', password: 'Peace:)', encrypted_password: 'Peace:)', first_name: 'Padme', last_name: 'Amidala', biographie: 'Ancienne Reine de Naboo désormais sénatrice de cette planète')
yoda = User.create!(email: 'yoda@jedi.org', password: 'May4thbewithyou', encrypted_password: 'May4thbewithyou', biographie: 'Maître Jedi')
sidious = User.create!(email: 'first_sith@darkside.org', password: 'IamCSP', encrypted_password: 'IamCSP', first_name: 'Darth', last_name: 'Sidious')

# Seed Planets
puts 'seeds planets'
Planet.create!(name: 'Coruscant', planet_type: 'Cité', safety: 2, prix: 500, localisation: 'Centre', user: palpatine, description: 'Cité-Planète située au centre de la galaxie et siège du pouvoir de la République avec le Sénat galactique et le Temple Jedi. Multi-raciale, vous trouverez obligatoirement un quartier à votre convenance.')
Planet.create!(name: 'Naboo', planet_type: 'Forêt', safety: 3, prix: 400, localisation: 'Bordure Intérieure', user: padme, description: "Planète verdoyante située dans la bordure médiane de la Galaxie. Vous pourrez y admirer ses paysages, sa capitale à l'architecture délicate et réputée et les vestiges de la bataille contre l'armée de la Fédération du Commerce.")
Planet.create!(name: 'Tatooine', planet_type: 'Désert', safety: 1, prix: 100, localisation: 'Bordure Extérieure', user: jabba, description: "Planète la plus accueillante de toute la galaxie. Vosu pouvez tous y venir, on vous trouvera une place. Magnifiques couchers de soleils. Offres d'emploi disponibles")
Planet.create!(name: 'Rakata Prime', planet_type: 'Sauvage', safety: 1, prix: 600, localisation: 'Régions Inconnues', user: sidious, description: "Ancienne capitale des Rakatas. Magnifiques ruines renfermant des secrets technologiques et des secrets sur la Force. Idéal pour explorateurs.")
Planet.create!(name: 'Alderaan', planet_type: 'Mixte', safety: 3, prix: 50, localisation: 'Centre', user: palpatine, description: "EN SOLDE - Magnifique planète des mondes du noyau, aux multiples climats et paysages. Réputée pour son vin exceptionnelle.")
Planet.create!(name: 'Dagobah', planet_type: 'Mixte', safety: 1, prix: 200, localisation: 'Bordure Extérieure', user: yoda, description: "Planète marécageuse. Atmosphère difficile, attention au dérèglement du vaisseau. Présence Côté Obscur. Pour courageux avertis")
Planet.create!(name: 'Ilum', planet_type: 'Glacée', safety: 2, prix: 800, localisation: 'Régions Inconnues', user: yoda, description: "Planète inhabitée où se trouve les rarissimes cristaux Kyber, coeurs des sabres lasers. Paysages de glace et cristallins à couper le souffle.")
Planet.create!(name: 'Nar Shaddaa', planet_type: 'Cité', safety: 1, prix: 700, localisation: 'Bordure Extérieure', user: jabba, description: "Planète-cité lumineuse où vosu pourrez trouver tout ce que vous cherchez et accomplir tous vps rêves. Vous n'en repartirez plus !")
Planet.create!(name: 'kashyyyk', planet_type: 'Forêt', safety: 3, prix: 200, localisation: 'Bordure Intérieure', user: yoda, description: "Planète d'origine de la race des Wookies recouverte d'uen immense forêt. On y célèbre les traditionnelles et célèbres 'Fêtes de la Vie'.")
Planet.create!(name: 'Korriban', planet_type: 'Désert', safety: 1, prix: 1000, localisation: 'Régions Inconnues', user: sidious, description: "Planète d'origine des siths. Désert où ne trouve que de la faune et flore adaptées au Côté Obscur, des anciens tombeaux et quelques fantômes siths.")
Planet.create!(name: 'Hott', planet_type: 'Glacée', safety: 2, prix: 600, localisation: 'Bordure Extérieure', user: padme, description: "Planète gelée du système du même nom. Les plus grands dangers : les températures et les wampas. Amateurs de ski vous serez enchantés.")
Planet.create!(name: 'Kammino', planet_type: 'Aquatique', safety: 3, prix: 800, localisation: 'Bordure Intérieure', user: palpatine, description: "Planète-Océan sur laquelle se trouvent des citées flottantes. Spécialité locale : le clonage, qu'il soit de masse ou spécialisé.")
Planet.create!(name: 'Bespin', planet_type: 'Gazeuse', safety: 3, prix: 500, localisation: 'Bordure Extérieure', user: padme, description: "Planète gazeuse fournissant l'indispensable gaz Tibanna. La Cité des Nuages vous y accueillera et propose même, pour les plus chanceux d'entre-vous deux casinos.")

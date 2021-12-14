# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 's.palpatine@senate.org', encrypted_password: 'IamDS', first_name: 'Seev', last_name: 'Palpatine', biographie: 'Ancien sénateur de Naboo, élu démocratiquement comme Chancelier Suprême de la République Galactique.')
User.create(email: 'jabba@hutt.tat', encrypted_password: 'Irule', first_name: 'Jabba Desilijic', last_name: 'Tiure', biographie: 'Maître incontesté et incontestable de Tatooine')
User.create(email: 'amidala@reine.nb', encrypted_password: 'Peace', first_name: 'Padme', last_name: 'Amidala', biographie: 'Ancienne Reine de Naboo désormais sénatrice de cette planète')
User.create(email: 'yoda@jedi.org', encrypted_password: 'May4thbewithyou', biographie: 'Maître Jedi')
User.create(email: 'first_sith@darkside.org', encrypted_password: 'IamP', first_name: 'Darth', last_name: 'Sidious')

Planet.create(name: 'Coruscant', type: 'Cité', safety: 2, prix: 500, localisation: 'Centre', user_id: 1, description: 'Cité-Planète située au centre de la galaxie et siège du pouvoir de la République avec le Sénat galactique et le Temple Jedi. Multi-raciale, vous trouverez obligatoirement un quartier à votre convenance.')
Planet.create(name: 'Naboo', type: 'Forêt', safety: 3, prix: 400, localisation: 'Bordure Intérieure', user_id: 3, description: "Planète verdoyante située dans la bordure médiane de la Galaxie. Vous pourrez y admirer ses paysages, sa capitale à l'architecture délicate et réputée et les vestiges de la bataille contre l'armée de la Fédération du Commerce.")
Planet.create(name: 'Tatooine', type: 'Désert', safety: 1, prix: 100, localisation: 'Bordure Extérieure', user_id: 2, description: "Planète la plus accueillante de toute la galaxie. Vosu pouvez tous y venir, on vous trouvera une place. Magnifiques couchers de soleils. Offres d'emploi disponibles")
Planet.create(name: 'Rakata Prime', type: 'Sauvage', safety: 1, prix: 600, localisation: 'Régions inconnues', user_id: 5, description: "Ancienne capitale des Rakatas. Magnifiques ruines renfermant des secrets technologiques et des secrets sur la Force. Idéal pour explorateurs.")
Planet.create(name: 'Aleraan', type: 'Mixte', safety: 3, prix: 50, localisation: 'Centre', user_id: 1, description: "EN SOLDE - Magnifique planète des mondes du noyau, aux multiples climats et paysages. Réputée pour son vin exceptionnelle.")
Planet.create(name: 'Dagobah', type: 'Mixte', safety: 1, prix: 200, localisation: 'Bordure Extérieure', user_id: 4, description: "Planète marécageuse. Atmosphère difficile, attention au dérèglement du vaisseau. Présence Côté Obscur. Pour courageux avertis")
Planet.create(name: 'Ilum', type: 'Glacée', safety: 2, prix: 800, localisation: 'Régions Inconnues', user_id: 4, description: "Planète inhabitée où se trouve les rarissimes cristaux Kyber, coeurs des sabres lasers. Paysages de glace et cristallins à couper le souffle.")
Planet.create(name: 'Nar Shaddaa', type: 'Cité', safety: 1, prix: 700, localisation: 'Régions Extérieures', user_id: 2, description: "Planète-cité lumineuse où vosu pourrez trouver tout ce que vous cherchez et accomplir tous vps rêves. Vous n'en repartirez plus !")
Planet.create(name: 'kashyyyk', type: 'Forêt')
Planet.creage(name: 'Korriban', type: 'Désert')
Planet.create(name: 'Hott', type: 'Glacée')

class Planet < ApplicationRecord
  LOCALISATIONPLANET = ['Centre', 'Bordure-Intérieure', 'Bordure-Extérieure', 'Régions-Inconnues']
  TYPEPLANET = ['Tellurique', 'Gazeuse', 'Cité', 'Désert', 'Forêt', 'Aquatique', 'Sauvage', 'Glacée', 'Mixte']
  SAFETYPLANET = [1, 2, 3]
  belongs_to :user
  has_many :locations, dependent: :destroy
  validates :name, presence: true
  validates :type, presence: true, collection: Planet::TYPEPLANET
  validates :safety, presence: true, collection: Planet::SAFETYPLANET
  validates :prix, presence: true
  validates :description, presence: true
  validates :localisation, presence: true, collection: Planet::LOCALISATIONPLANET
end

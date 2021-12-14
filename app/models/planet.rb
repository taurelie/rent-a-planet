class Planet < ApplicationRecord
  LOCALISATIONPLANET = ['Centre', 'Bordure Intérieure', 'Bordure Extérieure', 'Régions Inconnues']
  TYPEPLANET = ['Gazeuse', 'Cité', 'Désert', 'Forêt', 'Aquatique', 'Sauvage', 'Glacée', 'Mixte']
  SAFETYPLANET = [1, 2, 3]
  belongs_to :user
  has_many :locations, dependent: :destroy
  validates :name, presence: true
  validates :planet_type, presence: true, inclusion: { in: TYPEPLANET }
  validates :safety, presence: true, inclusion: { in: SAFETYPLANET }
  validates :prix, presence: true
  validates :description, presence: true
  validates :localisation, presence: true, inclusion: { in: LOCALISATIONPLANET }
end

class Location < ApplicationRecord
  belongs_to :planet
  belongs_to :user
  validates :date_arrivee, presence: true
  validates :date_depart, presence: true
  validates :tarif, presence: true
end

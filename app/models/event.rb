class Event < ApplicationRecord
  has_many :attendances
  has_many :users , through: :attendances 
  validates :start_date, presence: true #impossible de modifier ou créer un event passé
  validates :duration, presence: true #la durée doit être un miltiple de 5 et strictement positif
  validates :title, presence: true#, lenght: #{in: 5..140}
  validates :description, presence: true#, lenght: #{in: 20..1000}
  validates :price , presence: true, numericality: {only_integer: true, greater_than: 1, less_than: 1000}
  validates :location, presence: true
end

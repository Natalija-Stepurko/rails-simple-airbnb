class Flat < ApplicationRecord
  validates :name, :address, :description, presence: true
  validates :price_per_night, numericality: { only_integer: true }
  validates :number_of_guests, numericality: { only_integer: true }
end

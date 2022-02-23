class Venue < ApplicationRecord
  has_many :events
  has_many :tickets, through: :events

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end

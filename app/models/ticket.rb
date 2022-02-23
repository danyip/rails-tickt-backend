class Ticket < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_one :venue, through: :event
end

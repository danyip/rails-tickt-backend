class User < ApplicationRecord
  has_many :comments
  has_many :tickets
  has_many :events, through: :tickets
end

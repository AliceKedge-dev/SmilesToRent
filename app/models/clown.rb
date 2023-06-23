class Clown < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  has_many :users, through: :bookings
end

class User < ApplicationRecord
  has_one_attached :photo
  has_many :clowns
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :clowns, through: :bookings
end

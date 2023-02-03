class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews
  has_many :messages

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

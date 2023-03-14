class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews
  has_many :messages

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end

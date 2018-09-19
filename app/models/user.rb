class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # belongs_to :formule a remettre a la fin
  has_many :orders

  validates :email, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :phone_number, format: { with: /0[0-9]{9}/, message: "Invalid format, we need 10 digitsstarting with 0" }
end

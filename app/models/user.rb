class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :formule, optional: true
  has_many :orders

  validates :email, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :phone_number, format: { with: /0[0-9]{9}/, message: "Invalid format, we need 10 digitsstarting with 0" }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def unsubscribe!
    self.formule = Formule.find_by(price: 0) #permettra de dissocuer les user qui n'ont jamais été abonnés (formule_id: nil) de ceux qui ce sont désabonnés (formule_id: 1)
    save!
  end

  def formule_1
    self.formule = Formule.find_by(price: 15)
    save!
  end

  def formule_2
    self.formule = Formule.find_by(price: 25)
    save!
  end

end



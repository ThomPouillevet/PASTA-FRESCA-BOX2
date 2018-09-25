class Order < ApplicationRecord
  belongs_to :user
  belongs_to :formule
  has_many :pasta_orders
  has_many :pasta_types, through: :pasta_orders

  validates :status, inclusion: { in: ["to prepare", "in progress", "ready", "sent", "cancelled"]

# list the orders by their status

  def self.to_prepare
    Order.where(status: "to prepare")
  end

  def self.in_progress
    Order.where(status: "in progress")
  end

  def self.ready
    Order.where(status: "ready")
  end

  def self.sent
    Order.where(status: "sent")
  end

  def self.cancelled
    Order.where(status: "cancelled")
  end

# methodes de changement de status

  def prepare!
    self.status = "in_progress"
    save!
  end

  def ready!
    self.status = "ready"
    save!
  end

  def send!
    self.status = "sent"
    save!
  end

  def cancel!
    self.status = "cancelled"
    save!
  end

end

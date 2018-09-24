class Order < ApplicationRecord
  belongs_to :user
  belongs_to :formule
  has_many :pasta_orders
  has_many :pasta_types, through: :pasta_orders

  validates :status, inclusion: { in: ["to prepare", "in progress", "ready", "sent", "cancelled"]


  def self.to_prepare
  end

  def self.in_progress
  end

  def self.ready
  end

  def self.sent
  end

end

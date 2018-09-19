class Order < ApplicationRecord
  belongs_to :user
  belongs_to :formule
  has_many :pasta_orders
  has_many :pasta_types, through: :pasta_orders
end

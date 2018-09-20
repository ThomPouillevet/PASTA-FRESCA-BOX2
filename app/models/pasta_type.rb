class PastaType < ApplicationRecord
  has_many :pasta_orders
  mount_uploader :photo, PhotoUploader
end

class PastaOrder < ApplicationRecord
  belongs_to :pasta_type
  belongs_to :order
end

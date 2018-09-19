class AddReferenceToPastaOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :pasta_orders, :order, foreign_key: true
    add_reference :pasta_orders, :pasta_type, foreign_key: true
  end
end

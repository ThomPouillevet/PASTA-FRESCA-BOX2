class CreatePastaOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :pasta_orders do |t|

      t.timestamps
    end
  end
end

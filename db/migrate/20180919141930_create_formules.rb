class CreateFormules < ActiveRecord::Migration[5.2]
  def change
    create_table :formules do |t|
      t.integer :price
      t.integer :packs

      t.timestamps
    end
  end
end

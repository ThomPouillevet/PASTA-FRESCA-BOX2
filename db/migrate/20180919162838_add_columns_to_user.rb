class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :text
    add_column :users, :address, :text
    add_column :users, :phone_number, :text
  end
end

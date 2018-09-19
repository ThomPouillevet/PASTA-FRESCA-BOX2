class ChangeColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :name, :string
    change_column :users, :address, :string
    change_column :users, :phone_number, :string
  end
end

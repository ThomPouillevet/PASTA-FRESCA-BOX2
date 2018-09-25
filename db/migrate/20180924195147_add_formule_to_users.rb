class AddFormuleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :formule, foreign_key: true
  end
end

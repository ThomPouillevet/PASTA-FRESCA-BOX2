class RemoveReferenceOnUser < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :formule, index: true
  end
end

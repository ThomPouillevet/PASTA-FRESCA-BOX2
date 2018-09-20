class AddPhotoToPastaTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :pasta_types, :photo, :string
  end
end

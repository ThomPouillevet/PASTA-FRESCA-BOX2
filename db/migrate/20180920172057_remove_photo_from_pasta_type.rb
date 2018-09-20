class RemovePhotoFromPastaType < ActiveRecord::Migration[5.2]
  def change
    remove_column :pasta_types, :photo
  end
end

class CreatePastaTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :pasta_types do |t|
      t.string :name

      t.timestamps
    end
  end
end

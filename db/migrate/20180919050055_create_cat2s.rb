class CreateCat2s < ActiveRecord::Migration[5.2]
  def change
    create_table :cat2s do |t|
      t.references :cat1, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

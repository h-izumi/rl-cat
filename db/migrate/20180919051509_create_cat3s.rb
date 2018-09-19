class CreateCat3s < ActiveRecord::Migration[5.2]
  def change
    create_table :cat3s do |t|
      t.references :cat2, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

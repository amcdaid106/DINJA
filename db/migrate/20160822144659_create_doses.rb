class CreateDoses < ActiveRecord::Migration[5.0]
  def change
    create_table :doses do |t|
      t.references :ingredient, foreign_key: true
      t.references :recipe, foreign_key: true
      t.string :measure

      t.timestamps
    end
  end
end

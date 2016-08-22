class CreateBanishedIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :banished_ingredients do |t|
      t.references :user, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end

class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :photo
      t.text :instructions
      t.integer :prep_time
      t.integer :cooking_time
      t.string :category
      t.integer :calories
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :gluten_free
      t.boolean :egg_free
      t.boolean :dairy_free

      t.timestamps
    end
  end
end

class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :no_gluten, :boolean
    add_column :users, :no_eggs, :boolean
    add_column :users, :no_dairy, :boolean
    add_column :users, :vegetarian, :boolean
    add_column :users, :vegan, :boolean
    add_column :users, :max_calories, :integer
    add_column :users, :max_prep_time, :integer
    add_column :users, :is_admin, :boolean
  end
end

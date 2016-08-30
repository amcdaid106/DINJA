class AddWeekRecipesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :week_starters, :string, array: true, default: []
    add_column :users, :week_meals, :string, array: true, default: []
    add_column :users, :week_desserts, :string, array: true, default: []
    add_column :users, :last_meals_update, :date, default: (Date.today - 7.days)
  end
end

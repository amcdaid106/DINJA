class AddColumnsToOrderItems < ActiveRecord::Migration[5.0]
  def change
    add_column :order_items, :recipe_name, :string
    add_column :order_items, :recipe_price, :integer
  end
end

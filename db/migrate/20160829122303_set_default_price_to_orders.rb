class SetDefaultPriceToOrders < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :price, :integer, default: 0
  end
end

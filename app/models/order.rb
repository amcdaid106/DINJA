class Order < ApplicationRecord
  STATUS = ["Pending", "Confirmed", "Paid", "Delivered"]
  belongs_to :user
  has_many :order_items
  has_many :recipes, through: :order_items

  def update_price
    total_price = 0
    order.order_items.each do |order_item|
      price += (order_item.recipe.price * order_item.quantity)
    end
    order.price = total_price
  end
end

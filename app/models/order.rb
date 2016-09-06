class Order < ApplicationRecord
  STATUS = ["pending", "paid"]
  belongs_to :user
  has_many :order_items, dependent: :destroy
  has_many :recipes, through: :order_items

  def update_price
    total_price = 0
    self.order_items.each do |order_item|
      total_price += (order_item.recipe.price * order_item.quantity)
    end
    self.price = total_price
  end

  def price_cents
    (self.price * 100).to_i
  end
end

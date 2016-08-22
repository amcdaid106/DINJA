class Order < ApplicationRecord
  STATUS = ["Pending", "Confirmed", "Paid", "Delivered"]
  belongs_to :user
  has_many :order_items
  has_many :recipes, through: :order_items
end

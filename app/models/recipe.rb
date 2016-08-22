class Recipe < ApplicationRecord
  CATEGORY = ["Starter", "Main course", "Dessert"]
  has_many :doses
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :ingredients, through: :doses

  validates :name, presence: true
end

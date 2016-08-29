class Ingredient < ApplicationRecord
  has_many :doses
  has_many :banished_ingredients
  has_many :recipes, through: :doses

  validates :name, presence: true

end

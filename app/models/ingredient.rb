class Ingredient < ApplicationRecord
  has_many :doses
  has_many :banished_ingredients, dependent: :destroy
  has_many :recipes, through: :doses

  validates :name, presence: true, uniqueness: true

end

class Ingredient < ApplicationRecord
  has_many :doses, dependent: :nullify
  has_many :banished_ingredients, dependent: :destroy
  has_many :recipes, through: :doses

  validates :name, presence: true, uniqueness: true

end

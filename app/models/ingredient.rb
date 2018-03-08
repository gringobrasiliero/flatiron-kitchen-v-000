class Ingredient < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :recipe
  has_many :recipes, through: :recipe_ingredients
end

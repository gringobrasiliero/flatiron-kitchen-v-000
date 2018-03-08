class Recipe < ActiveRecord::Base
  validates :name, presence: true
  has_many :ingredients
   has_many :ingredients, through: :recipe_ingredients
end

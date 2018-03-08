class IngredientsController < ApplicationController

def new
  @ingredient = Ingredient.new
  @ingredients = Ingredient.all
end

def create
@ingredient = Ingredient.create(ingredient_params)
redirect_to new_ingredient_path
end

def edit

end

private

def ingredient_params

end

end

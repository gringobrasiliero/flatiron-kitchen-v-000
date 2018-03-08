class IngredientsController < ApplicationController

def new
  @ingredient = Ingredient.new
  @ingredients = Ingredient.all
end

def create
@ingredient = Ingredient.create(ingredient_params)
redirect_to ingredient_path(@ingredient.id)
end

def edit

end

private

def ingredient_params
  params.require(:ingredient).permit(:name)
end
end

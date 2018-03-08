class IngredientsController < ApplicationController

def create
@ingredient = Ingredient.create(ingredient_params)
end

def edit

end


end

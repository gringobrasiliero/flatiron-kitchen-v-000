class IngredientsController < ApplicationController

def create
@ingredient = Ingredient.create(post_params)
end

def edit

end


end

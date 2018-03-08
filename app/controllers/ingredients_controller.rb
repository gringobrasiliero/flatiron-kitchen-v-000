class IngredientsController < ApplicationController

def new
  @ingredient = Ingredient.new
  @ingredients = Ingredient.all
end

def create
@ingredient = Ingredient.create(ingredient_params)
if @ingredient.save
  redirect_to ingredient_path(@ingredient.id)
else
  render 'new'
end
end

def edit

end

def show
  @ingredient = Ingredient.find(params[:id])
end

private

def ingredient_params
  params.require(:ingredient).permit(:name)
end
end

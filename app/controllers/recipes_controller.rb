class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    @recipe = Recipe.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
  end

  def edit

  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids: [])
  end

end

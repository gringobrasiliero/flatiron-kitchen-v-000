class RecipesController < ApplicationController

  def create
    @recipe = Recipe.create(recipe_params)
  end

  def edit

  end
end

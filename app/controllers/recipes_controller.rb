class RecipesController < ApplicationController

  def create
    @recipe = Recipe.create(recipe_params)
  end

  def edit

  end

  private

  def recipe_params

  end
  
end

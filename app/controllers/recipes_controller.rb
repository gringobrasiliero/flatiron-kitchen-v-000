class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
    @recipe = Recipe.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
  end

  def edit
  @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe.id)


  private

  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids: [])
  end

end

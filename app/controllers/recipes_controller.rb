class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find(params[:id])
    @user = current_user
  end

  def weekly
    @recipes = Recipes.all
  end

end

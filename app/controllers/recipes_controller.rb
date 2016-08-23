class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find(params[:id])
    @user = current_user
  end


end

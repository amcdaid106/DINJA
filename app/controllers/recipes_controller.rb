class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find(params[:id])
    @user = current_user
  end

  def weekly
    if user_signed_in?
      @recipes = Recipe.all
    else
      if current_user.has_user_completed_food_preferences?
        @recipes = Recipe.where(gluten_free: current_user.no_gluten, egg_free: current_user.no_eggs,
        vegetarian: current_user.vegetarian, vegan: current_user.vegan)
      else
        @recipes = Recipe.all
      end
    end
  end
end

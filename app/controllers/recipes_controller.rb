class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :weekly ]

  def show
    @recipe = Recipe.find(params[:id])
    @user = current_user
  end

  def weekly
    if user_signed_in?
      if current_user.has_user_completed_food_preferences?
        @recipes = Recipe.all
        @recipes = @recipes.where(gluten_free: true) if current_user.no_gluten
        @recipes = @recipes.where(egg_free: true) if current_user.no_eggs
        @recipes = @recipes.where(dairy_free: true) if current_user.no_dairy
        @recipes = @recipes.where(vegetarian: true) if current_user.vegetarian
        @recipes = @recipes.where(vegan: true) if current_user.vegan
        @recipes = @recipes.where("recipes.calories < ?", current_user.max_calories) if current_user.max_calories != nil
        @recipes = @recipes.where("recipes.prep_time < ?", current_user.max_prep_time) if current_user.max_prep_time != nil
        @mains = @recipes.where(category: "Main course").sample(6)
        @starters = @recipes.where(category: "Starter").sample(3)
        @desserts = @recipes.where(category: "Dessert").sample(3)
      else
        @recipes = Recipe.all
        @mains = @recipes.where(category: "Main course").sample(6)
        @starters = @recipes.where(category: "Starter").sample(3)
        @desserts = @recipes.where(category: "Dessert").sample(3)
      end
    else
      @recipes = Recipe.all
      @mains = @recipes.where(category: "Main course").sample(6)
      @starters = @recipes.where(category: "Starter").sample(3)
      @desserts = @recipes.where(category: "Dessert").sample(3)
    end
  end

  def index
    @orders = Order.where({ user_id: params[:user_id] })
    @orders_confirmed = @orders.where(status: "confirmed").map(&:recipes).flatten
  end

end

# Ajouter une semaine aux meals (ex: 1, 2, 3, 4...)
# Ajouter : toujours les mêmes meals doivent apparaître pendant 1 semaine
# fixer le sample dans la durée


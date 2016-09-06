class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :weekly ]
  before_action :set_order

  def index
    @orders = Order.where({ user_id: params[:user_id] })
    @recipes = @orders.where(status: "paid").map(&:recipes).flatten.uniq.sort_by!{ |recipe| recipe.name.downcase}
  end

  def show
    @recipe = Recipe.find(params[:id])
    @user = current_user
  end

  def weekly
    if params[:target]
      @target = params[:target]
    end
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

        # On recupere les ids des recettes ayant des ingredients banni
        banned_ids = @recipes.joins(:doses).
          where(doses: { ingredient_id: current_user.banished_ingredients.pluck(:ingredient_id) }).
          pluck(:id)

        # On selectionne les recettes n'ayant pas ces ids
        @recipes = @recipes.where.not(id: banned_ids)
      else
        @recipes = Recipe.all
      end

      # meals expired
      if (current_user.last_meals_update + 7.days <= Date.today)
        current_user.week_starters = @recipes.where(category: "Starter").sample(3).map(&:id)
        current_user.week_meals = @recipes.where(category: "Main course").sample(6).map(&:id)
        current_user.week_desserts = @recipes.where(category: "Dessert").sample(3).map(&:id)
        current_user.last_meals_update = Date.today
        current_user.save
      end

      @starters = @recipes.where(id: current_user.week_starters)
      @mains = @recipes.where(id: current_user.week_meals)
      @desserts = @recipes.where(id: current_user.week_desserts)

    else
      @recipes = Recipe.all
      @starters = @recipes.where(category: "Starter").sample(3)
      @mains = @recipes.where(category: "Main course").sample(6)
      @desserts = @recipes.where(category: "Dessert").sample(3)
    end
  end

  private

  def set_order
    if current_user
      @order = current_user.orders.where(status: 'pending').first
    end
  end
end



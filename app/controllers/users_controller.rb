class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    current_user.assign_attributes(user_params)
    current_user.last_meals_update = Date.today - 14.days
    current_user.banished_ingredients.destroy_all

    if params[:banned_ingredients]
      params[:banned_ingredients].each do |banned_ingredient_id|
        BanishedIngredient.create(user: current_user, ingredient_id: banned_ingredient_id)
      end
    end

    current_user.save

    flash[:notice] = "Changes saved!"

    respond_to do |format|
      format.html { redirect_to edit_user_path(current_user) }
      format.js
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :address,
      :no_gluten, :no_eggs, :no_dairy, :vegetarian, :vegan, :max_calories,
      :max_calories, :max_prep_time)
  end
end

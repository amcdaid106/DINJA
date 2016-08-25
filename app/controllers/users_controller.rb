class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def edit
  end

  def update
    @user.update(user_params)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :address,
      :no_gluten, :no_eggs, :no_dairy, :vegetarian, :vegan, :max_calories,
      :max_calories, :max_prep_time)
  end

  def set_user
    @user = User.find(params[:id])
  end

end

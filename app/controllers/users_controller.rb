class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to root_path
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

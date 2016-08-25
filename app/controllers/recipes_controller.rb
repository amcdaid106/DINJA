class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :weekly ]
  def weekly
    @recipes = Recipes.all
  end
end

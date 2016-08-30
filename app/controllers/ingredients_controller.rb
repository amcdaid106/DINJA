class IngredientsController < ApplicationController
  def index
    @query = params[:query]
    @ingredients = Ingredient.all

    if @query.present?
      @ingredients = @ingredients.where("name LIKE ?", "#{@query}%")
    end

    @ingredients = @ingredients.order(:name).limit(30)

    respond_to do |format|
      format.json { render json: @ingredients.to_json }
    end
  end
end

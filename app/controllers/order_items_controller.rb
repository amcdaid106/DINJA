class OrderItemsController < ApplicationController
  include OrdersHelper
  before_action :create_order, only: [:create]

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order = @order_item.order
    @order_item.destroy
    @grand_total = 0
    @order.order_items.each do |item|
      @grand_total += (item.quantity * item.recipe.price)
    end
    respond_to do |format|
      format.html { redirect_to edit_order_path(@order) }
      format.js {}
    end
  end

  def create
    @recipe = Recipe.find(params[:order_item][:recipe_id])
    @referral = params[:referral]

    @order_item = @order.order_items.where(recipe_id: @recipe.id).first
    @order_item ||= OrderItem.new(
      order: @order,
      recipe: @recipe,
      recipe_name: @recipe.name,
      recipe_price: @recipe.price,
      quantity: 0
    )

    @order_item.quantity += 1
    @order_item.save

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

private

  def create_order
    @order = current_order
  end
end

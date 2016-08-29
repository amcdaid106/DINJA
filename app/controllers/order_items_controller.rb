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
    if @order.order_items.find { |oi| oi.recipe_id == @recipe.id }.nil?
      @order_item = OrderItem.new(quantity: 1)
      @order_item.order = @order
      @order_item.recipe = @recipe
      @order_item.recipe_name = @recipe.name
      @order_item.recipe_price = @recipe.price
      @order_item.save
      redirect_to root_path
    else
      render :home
    end
  end

private

  def create_order
    @order = current_order
  end
end

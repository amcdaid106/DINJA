class OrderItemsController < ApplicationController
  include OrdersHelper
  before_action :set_order, only: [:create, :add_one, :remove_one]

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

  def add_one
    @order_item = @order.order_items.find(params[:id])
    @order_item.quantity += 1
    @order_item.save

    @grand_total = @order.order_items.joins(:recipe).sum("quantity * recipes.price")

    respond_to do |format|
      format.html { redirect_to edit_order_path(@order) }
      format.js   { render :cart_order_item }
    end
  end

  def remove_one
    @order_item = @order.order_items.find(params[:id])
    @order_item.quantity -= 1 if @order_item.quantity > 1
    @order_item.save

    @grand_total = @order.order_items.joins(:recipe).sum("quantity * recipes.price")

    respond_to do |format|
      format.html { redirect_to edit_order_path(@order) }
      format.js   { render :cart_order_item }
    end
  end

private

  def set_order
    @order = current_order
  end
end

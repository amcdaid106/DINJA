class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :update, :show]
  # before_action :set_grand_total, [:edit, :update, :show]

  def edit
    @grand_total = 0
    @order.order_items.each do |item|
      @grand_total += (item.quantity * item.recipe.price)
    end

  end

  def update
    @user = current_user
    @order.order_items.each do |order_item|
      order_item.quantity = params["quantity_order_item_#{order_item.id}"]
      order_item.save
    end
    @grand_total = 0
    @order.order_items.each do |item|
      @grand_total += (item.quantity * item.recipe.price)
    end
    @order.price = @grand_total
  end

  def show
    @grand_total = 0
    @order.order_items.each do |item|
      @grand_total += (item.quantity * item.recipe.price)
    end

  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def set_grand_total
    @grand_total = 0
    @order.order_items.each do |item|
      @grand_total += (item.quantity * item.recipe.price)
    end
  end

end

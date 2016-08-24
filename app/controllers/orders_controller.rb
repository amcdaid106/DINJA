class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :update, :show]

  def edit
    @grand_total = 0
    @order.order_items.each do |item|
      @grand_total += (item.quantity * item.recipe.price)
    end
  end

  def update
    raise
    @order.order_items.each do |order_item|
      order_item.quantity = params["quantity_order_item_#{order_item.id}"]
      order_item.save
    end

  end

  def show
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

end

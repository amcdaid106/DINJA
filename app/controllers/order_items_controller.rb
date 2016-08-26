class OrderItemsController < ApplicationController
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
    #set_recipe
    #check in order if recipe exist?
    #if exist => flash error
    #else create order item from params
    @order_item = Order_item.new(quantity: 1)

    redirect_to home_path
  end

private

  def create_order
    @orders = Order.all
    unless @orders.where({ user: current_user })
     @order = Order.new
     @order.user = current_user
     @order.status = "pending"
    end
  end

end

class PaymentsController < ApplicationController
  before_action :set_order

  def new
    @user = current_user
    @grand_total = 0
    @order.order_items.each do |item|
      @grand_total += (item.quantity * item.recipe.price)
    end
    @order.price = @grand_total
  end

  private

  def set_order
    @order = current_user.orders.where(status: "pending").find(params[:order_id])
  end
end

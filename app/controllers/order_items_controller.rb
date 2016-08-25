class OrderItemsController < ApplicationController
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
end

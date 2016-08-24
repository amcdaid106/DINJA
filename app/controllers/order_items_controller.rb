class OrderItemsController < ApplicationController

  def update(direction)
    if direction == "up"
      @order_item.quantity += 1
    elsif direction == "down"
      @order_item.quantity -= 1
    end
    if @order_item.save
      @order_item.order.update_price
    end
    @order_item.order.price

  end

  def destroy

  end

end

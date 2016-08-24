class OrdersController < ApplicationController
  def create

  end


  def edit
    @order = Order.find(params[:id])
  end
end

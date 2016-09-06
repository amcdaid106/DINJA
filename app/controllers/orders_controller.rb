class OrdersController < ApplicationController
  include OrdersHelper
  before_action :set_order, only: [:edit, :update, :update_address, :show]
  before_action :create_order, only: [:edit]

  def index
    @orders = Order.where({ user_id: params[:user_id] })
    @orders_pending = @orders.where(status: "pending")
    @orders_paid = @orders.where(status: "paid")
  end

  def edit
    @grand_total = @order.order_items.joins(:recipe).sum("quantity * recipes.price")
  end

  def update
    @user = current_user

    @order.order_items.each do |order_item|
      order_item.quantity = params["quantity_order_item_#{order_item.id}"]
      order_item.save
    end

    if @order.address.blank?
      @order.address = current_user.address
    end
    @order.delivery_date = Date.today + 3.days
    @order.update_price
    if @order.save
      redirect_to new_order_payment_path(@order)
    else
      render :edit
    end
  end

  def update_address
    @order.update(order_params)
  end

  def show
    @grand_total = 0
    @order = Order.where(status: 'paid').find(params[:id])
    @order.order_items.each do |item|
      @grand_total += (item.quantity * item.recipe.price)
    end
  end

  private

  def order_params
    params.require(:order).permit(:address)
  end

  def set_order
    @order = Order.find(params[:id])
  end

  def create_order
    @order = current_order
  end
end

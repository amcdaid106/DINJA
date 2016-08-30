class OrdersController < ApplicationController
  include OrdersHelper
  before_action :set_order, only: [:edit, :update, :update_address, :show]
  before_action :create_order, only: [:edit]
  # before_action :set_grand_total, [:edit, :update, :show]

  def index
    @orders = Order.where({ user_id: params[:user_id] })
    @orders_pending = @orders.where(status: "pending")#.map(&:recipes).flatten
    @orders_confirmed = @orders.where(status: "confirmed").map(&:recipes).flatten
    @orders_cancelled = @orders.where(status: "cancelled").map(&:recipes).flatten
    @orders_confirmed = @orders.where(status: "paid").map(&:recipes).flatten
  end

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

    if @order.address.blank?
      @order.address = current_user.address
    end

    @order.update_price
    @order.save

    redirect_to new_order_payment_path(@order)
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

  def set_grand_total
    @grand_total = 0
    @order.order_items.each do |item|
      @grand_total += (item.quantity * item.recipe.price)
    end
  end

  def create_order
    @order = current_order
  end

end

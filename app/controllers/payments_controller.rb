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

  def create
    @amount_cents = @order.price_cents

    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @amount_cents, # in cents
      description:  "Payment for order with #{display_cookbook} and order ID #{@order.id}",
      currency:     'eur'
    )

    @order.update(payment: charge.to_json, status: 'paid')
    redirect_to order_path(@order)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_order_payment_path(@order)
  end

  private

  def set_order
    @order = current_user.orders.where(status: "pending").find(params[:order_id])
  end

  def display_cookbook
    str = @order.order_items.reduce("") { |cookbook, oi| cookbook + oi.recipe.name + ', '}
    str = str[0..-3]
  end
end

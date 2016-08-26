module OrdersHelper
  def current_order
    current_user.orders.find { |order| order.status == 'pending' } ||  current_user.orders.create(status: 'pending')
  end
end

module OrdersHelper
  def current_order
    if current_user
      current_user.orders.find { |order| order.status == 'pending' } ||  current_user.orders.create(status: 'pending')
    end
  end
end

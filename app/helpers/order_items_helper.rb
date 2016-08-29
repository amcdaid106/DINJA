module OrderItemsHelper
  def order_item_quantity_label(order, recipe)
    return unless order

    order_item = order.order_items.where(recipe_id: recipe.id).first
    return unless order_item

    content_tag :button, "#{order_item.quantity} added", class: "btn btn-success recipe-added-count"
  end

  def order_item_quantity_label_in_show(order, recipe)
    return unless order

    order_item = order.order_items.where(recipe_id: recipe.id).first
    return unless order_item

    content_tag :button, "#{order_item.quantity} added", class: "btn btn-success recipe-added-count-in-show"
  end
end

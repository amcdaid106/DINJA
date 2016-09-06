module OrderItemsHelper
  def order_item_quantity_label(order, recipe, referral=nil)
    return unless order

    order_item = order.order_items.where(recipe_id: recipe.id).first
    return unless order_item

    if referral == "recipe_show"
      css_class_name = "quantity-count-in-show"
    else
      css_class_name = "quantity-count"
    end

    content_tag :p, "Quantity: #{order_item.quantity}", class: css_class_name
  end
end

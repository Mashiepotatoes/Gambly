class OrdersController < ApplicationController
  def create
    experience = Experience.find(params[:experience_id])
    order = Order.create!(experience: experience, experience_sku: experience.sku, amount: experience.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: experience.sku,
        images: [experience.photo_url],
        amount: experience.price,
        currency: 'sgd',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
    raise
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end

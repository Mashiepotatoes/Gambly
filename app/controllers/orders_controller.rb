class OrdersController < ApplicationController
  def create
    experience = Experience.find(params[:experience_id])
    order = Order.create!(experience: experience, amount: experience.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      mode: "payment",
      line_items: [{
        price_data: {
          currency: 'sgd',
          unit_amount: experience.price_cents,
          product_data: {
            name: experience.name,
            images: [experience.photo_url]
          }
        },
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )
    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end

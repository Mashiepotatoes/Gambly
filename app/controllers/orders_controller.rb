class OrdersController < ApplicationController
  def create
    @experiences =  params[:'experience-ids'].split(',').map { |id| Experience.find(id) }
    total = @experiences.sum { |exp| exp.price }.to_i
    #experience = Experience.find(params[:experience_id])
    # map all the experiences into an array to be consumed by line items
    # get the total of the all the experiences so I can send it to the payments
    order = Order.create!(experiences: params[:'experience-ids'].split(','), amount: total, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      mode: "payment",
      line_items: [{
        price_data: {
          currency: 'sgd',
          unit_amount: total * 100,
          product_data: {
            name: "Your experience Order",
            images: [@experiences.first.photo_url]
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

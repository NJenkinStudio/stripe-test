class PaymentIntentsController < ApplicationController
  def create
    payment_intent = Stripe::PaymentIntent.create(
      amount: 1000,
      currency: 'usd',
      description: 'Order',
      statement_descriptor: 'TimeSink submit',
    )
    render json: {
      id: payment_intent.id,
      client_secret: payment_intent.client_secret
    }
  end
end

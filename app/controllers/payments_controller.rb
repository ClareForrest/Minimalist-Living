class PaymentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhooks]

  def success; end

  def webhooks
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    render plain: 'Success'
  end
end

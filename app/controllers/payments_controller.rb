class PaymentsController < ApplicationController
  def success; end

  def webhook
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    solution_id = payment.metadata.solution_id
    user_id = payment.metadata.user_id
    p "Solution id" + solution_id
    p "User id" + user_id
    render plain: "Success"
  end
end
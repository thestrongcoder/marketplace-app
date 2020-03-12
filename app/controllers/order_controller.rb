class OrderController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]
    def new
        @product = Product.find(params[:product_id])
        @session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: @product.name,
          amount: (@product.price * 100).to_i,
          currency: 'aud',
          quantity: 1,
        }],
        payment_intent_data: {
          metadata: {
            user_id: current_user.id,
            product_id: @product.id
          }
        },
        success_url: "#{root_url}orders/complete",
        cancel_url: "#{root_url}",
        )
      end
    
      def complete
      
      end

    def webhook
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        product_id = payment.metadata.product_id
        user_id = payment.metadata.user_id
        p "product id #{product_id}"
        p "user id #{user_id}"

        order = Order.new
        order.user_id = user_id
        order.product_id = product_id
        order.save
        render plain: "Success"
    end

end

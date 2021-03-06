class ChargesController < ApplicationController
    def create

      @order = Order.find(params[:order_id])
    
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )

      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @order.price * @order.order_quantity,
        :description => @order.title,
        :currency    => 'aud'
      )
      @meal = @order.meal
      @order.paid = true
      @order.save
      @meal.quantity -= @order.order_quantity  
      # decreases the meal quantity on each order
      @meal.save
  
      UserMailer.with(user: current_user).new_order.deliver_now
      # sends email on purchase to user accounts that have been verified in mailgun
    
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
      end
end

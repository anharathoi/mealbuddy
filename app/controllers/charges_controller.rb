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
    


      
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end



end

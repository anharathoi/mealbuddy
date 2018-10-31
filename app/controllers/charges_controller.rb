class ChargesController < ApplicationController


    def create
    @meal = Meal.find(params[:meal_id])
    
        customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
    
      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @meal.price,
        :description => @meal.title,
        :currency    => 'aud'
      )
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end



end

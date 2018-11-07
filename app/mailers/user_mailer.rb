class UserMailer < ApplicationMailer
  def new_registration
    @user = params[:user]
    # binding.pry
    mail(to: @user.email, subject: "Welcome to Mealbuddy!!")
    # method to send email on joining mealbuddy
  end


  def new_order
    @user = params[:user]
    @order = params[:order]
    # binding.pry
    mail(to: @user.email, subject: "Order Confirmation")
    # method to send email on orders
  end
end

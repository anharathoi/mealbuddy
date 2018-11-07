class UserMailer < ApplicationMailer
  def new_registration
    @user = params[:user]
    # binding.pry
    mail(to: @user.email, subject: "Welcome to Mealbuddy!!")
  end


  def new_order
    @user = params[:user]
    @order = params[:order]
    # binding.pry
    mail(to: @user.email, subject: "Order Confirmation")
  end
end

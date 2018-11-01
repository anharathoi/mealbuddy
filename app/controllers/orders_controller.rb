class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def create    
    meal = Meal.find(params[:meal_id]) 
    order = Order.create(order_params)
    order.user = current_user
    order.meal_id = meal.id
    order.user_id = current_user.id
    order.title = meal.title
    order.price = meal.price
    order.save
  # binding.pry 
    redirect_to(order_path(order))

  end

  private

  def order_params
    params.require(:order).permit(:meal_id,:user_id,:order_quantity, :title, :price)
  end
end
class OrdersController < ApplicationController

  def show
    
  end
  def new
    @meal = Meal.find(params[:id]) 
    @order = Order.new
  end

  def create    
    # @order = Order.create(order_params)
    meal = Meal.find(params[:meal_id]) 
    order = Order.create(order_params)
    order.user = current_user
    order.meal_id = meal.id
    order.user_id = current_user.id
    order.title = meal.title
    order.price = meal.price
    order.save
  # binding.pry 
    redirect_to(root_path)

  end

  private

  def order_params
    params.require(:order).permit(:meal_id,:user_id,:order_quantity, :title, :price)
  end
end

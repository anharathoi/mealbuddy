class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
    @order = Order.new
  end

  def edit
    @meal = Meal.find(params[:id]) 
  end

  def update
    @meal = Meal.find(params[:id]) 
    @meal.update(meal_params)
    redirect_to(root_path) 
  end

  def new
    @meal = Meal.new
  end

  def create
    puts meal_params.inspect
    @meal = current_user.meals.create(meal_params)
    redirect_to(root_path)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to(meals_usermeals_path)
  end

  def usermeals
    @meals = current_user.meals
  end

  def searchmeals
    @meals = Meal.where('title ilike :title', title: "%#{params[:title]}%")
    render :index    
  end

  private
  def meal_params
    result = params.require(:meal).permit(:title, :description, :price, :available_from, :available_until, :quantity, :image)
    result[:price] = result[:price].to_f * 100.0
    result
  end
end

class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
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
    @meal = current_user.meals.create(meal_params)
    redirect_to(root_path)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to(root_path)
  end

  def usermeals
    @meals = current_user.meals
  end

  

  private
  def meal_params
    params.require(:meal).permit(:title, :description, :price, :available_from, :available_until)
  end
end

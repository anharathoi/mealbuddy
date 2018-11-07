class MealsController < ApplicationController

  def index
    @meals = Meal.all
    # UserMailer.with(user: current_user).new_registration.deliver_now

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
  # SELECT * FROM meals WHERE title iLIKE '%las%'
    @meals = Meal.where('title ilike :title', title: "%#{params[:title]}%")
    render :index    
  end

  def searchbylocation
    address = params[:address] + ", Australia"
    users = User.near(address)
    user_ids = users.map(&:id)
    #only selects the ids, tried using pluck which did not work for some reason thus used map
    @meals = Meal.where(user_id: user_ids)
    render :index
  end


  private
  def meal_params
    result = params.require(:meal).permit(:title, :description, :price, :available_from, :available_until, :quantity, :image)
    result[:price] = result[:price].to_f * 100.0
    result
  end
end

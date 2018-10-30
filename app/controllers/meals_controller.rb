class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    
  end

  def edit
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.create
  end


end

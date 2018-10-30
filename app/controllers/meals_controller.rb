class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    
  end

  def edit
  end

  def new
  end
end

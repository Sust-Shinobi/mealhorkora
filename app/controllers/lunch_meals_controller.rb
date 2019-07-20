class LunchMealsController < ApplicationController

  def index
    @lunch_meals = LunchMeal.all
  end

end

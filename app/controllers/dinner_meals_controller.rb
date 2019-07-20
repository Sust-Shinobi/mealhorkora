class DinnerMealsController < ApplicationController

  def index
    @dinner_meals = DinnerMeal.all
  end

end

class LunchManagersController < ApplicationController
    before_action :admin_user, only: [:new,:create,:destroy]
    def new
        @users = User.where(takes_lunch: 1)
        @lunch_meals = LunchMeal.all
    end

    def create
        user = User.find(params[:lunch][:user_id])
        unless ( helpers.had_lunch_today?(user) && !user.nil?)
            lunch = user.lunches.build
            time = params[:lunch][:date].split(' ')
            params[:lunch][:day] = time.first
            params[:lunch][:month] = time.second
            params[:lunch][:year] = time.third
            lunch.update_attributes(lunch_params)
            redirect_back_or lunch_manager_path
        end
    end

    def destroy
    end


    def show_meal
        @lunch_meals = LunchMeal.all
    end

    def new_meal
        @lunch_meal = LunchMeal.new
    end

    def create_meal
        items = params[:lunch_meal][:items]
        cost = params[:lunch_meal][:cost]
        LunchMeal.create!(items: items, cost: cost)
    end

    private

    def lunch_params
        params.require(:lunch).permit(:day,:month,:year)
    end

    def admin_user
        if current_user.superuser?
        return current_user
        else redirect_to root_url
        end
    end

end

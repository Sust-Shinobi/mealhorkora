class LunchManagersController < ApplicationController
    
    def new
        @users = User.where(takes_lunch: 1)
    end

    def create
        user = User.find(params[:lunch][:user_id])
        unless ( helpers.had_meal_today?(user) && !user.nil?)
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

    private

    def lunch_params
        params.require(:lunch).permit(:day,:month,:year)
    end

end

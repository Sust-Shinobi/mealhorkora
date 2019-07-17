class DinnerManagersController < ApplicationController
    def new
        @users = User.where(takes_dinner: 1)
    end

    def create
        user = User.find(params[:dinner][:user_id])
        unless ( helpers.had_dinner_today?(user) && !user.nil?)
            dinner = user.dinners.build
            time = params[:dinner][:date].split(' ')
            params[:dinner][:day] = time.first
            params[:dinner][:month] = time.second
            params[:dinner][:year] = time.third
            params[:dinner][:haddinner] = true
            dinner.update_attributes(dinner_params)
            redirect_back_or dinner_manager_path
        end
    end

    def destroy
    end


    def show_meal
    end

    def create_meal
    end

    private

    def dinner_params
        params.require(:dinner).permit(:day,:month,:year,:haddinner)
    end
end

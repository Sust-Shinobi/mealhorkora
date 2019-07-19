class DinnerManagersController < ApplicationController
    def new
        @users = User.where(takes_dinner: 1)
        @dinner_meals = DinnerMeal.all
    end

    def create
        user = User.find(params[:dinner][:user_id])
        dinner_meal_id = params[:dinner_meal_id]
        params[:dinner][:dinner_meal_id] = dinner_meal_id
        unless ( helpers.had_dinner_today?(user) && !user.nil?)
            dinner = user.dinners.build
            time = params[:dinner][:date].split(' ')
            params[:dinner][:day] = time.first
            params[:dinner][:month] = time.second
            params[:dinner][:year] = time.third
            params[:dinner][:haddinner] = true
            if !user.balance.nil?
                if user.balance>300
                    if dinner.update_attributes(dinner_params)
                        user.update_balance(user.balance-DinnerMeal.find(dinner_meal_id).cost)
                        flash[:success] = "Dinner confirmed"
                    end
                else
                    flash[:danger] = "Insufficient account balance"
                end
            else
                flash[:danger] = "Insufficient account balance"
            end

        end
        redirect_back_or dinner_manager_path
    end

    def destroy
    end


    def show_meal
    end

    def create_meal
        items = params[:dinner_meal][:items]
        cost = params[:dinner_meal][:cost]
        DinnerMeal.create!(items: items, cost: cost)
        redirect_to dinner_manager_path
    end

    def new_meal
        @dinner_meal = DinnerMeal.new
    end

    private

    def dinner_params
        params.require(:dinner).permit(:day,:month,:year,:haddinner,:dinner_meal_id)
    end
end

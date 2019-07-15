require './app/src/meal_account/meal_account.rb'
require './app/src/meal_account/user_account.rb'
require './app/src/meal_account/admin_account.rb'

class MealAccountFactoryController < ApplicationController
    def new
    end

    def create
        account = MealAccount.new
        year = params[:account]["expired(1i)"].to_i
        month = Date::MONTHNAMES[params[:account]["expired(2i)"].to_i]
        day = params[:account]["expired(3i)"]
        if ( current_user.superuser? && params[:account][:showall].to_i == 1)
            account = AdminAccount.new
        elsif logged_in?
            account = UserAccount.new
        end

        unless year == 0
        @lunchrecords = account.fetch_lunch_records(year,month,day,current_user.id)
        @dinnerrecords = account.fetch_dinner_records(year,month,day,current_user.id)
        render 'new'
        else
            render 'new'
            flash[:error] = "Sorry Year Must Be Selected!"
        end
    end
end

require './app/src/meal_account/meal_account.rb'
require './app/src/meal_account/user_account.rb'
require './app/src/meal_account/admin_account.rb'

class MealAccountFactoryController < ApplicationController
    def new
    end

    def create
        account = MealAccount.new
        year = params[:account][:year]
        month = params[:account][:month]
        if ( current_user.superuser? && params[:account][:isadmin] )
            account = AdminAccount.new
        elsif logged_in?
            account = UserAccount.new
        end
        @lunchrecords = account.fetch_lunch_records(year,month,current_user.id)
        @dinnerrecords = account.fetch_dinner_records(year,month,current_user.id)
        render 'new'
    end
end

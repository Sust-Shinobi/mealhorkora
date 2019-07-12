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
        if current_user.superuser?
            account = AdminAccount.new
        else
            account = UserAccount.new
        end
        @records = account.fetch_lunch_records(year,month)
        render 'new'
    end
end

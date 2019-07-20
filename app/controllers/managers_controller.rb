class ManagersController < ApplicationController
    def new
        @users = User.paginate(page: params[:page]).where(superuser: 1)
    end

    def update_balance
    end

    def setbalance
        user = User.find_by_email(params[:balance][:email])
        bp = balance_params
        unless user.balance.nil?
            bp[:balance] = user.balance + bp[:balance].to_i
            flash[:success] = "Balance has been refilled!"
        end
        user.update_attributes(bp)
        user.save!
        redirect_to user
    end

    def create_admin
        @user = User.find(params[:id])
        if @user.update_attributes(superuser: 1)
            flash[:success] = @user.name+" has been succesfully made admin"
            redirect_to users_path
        end
    end

    def remove_admin
        @user = User.find(params[:id])
        if @user.update_attributes(superuser: 0)
            flash[:success] = @user.name+" has been removed from the managers panel"
            redirect_to manager_panel_path
        end
    end

    private

    def balance_params
        params.require(:balance).permit(:balance)
    end
end

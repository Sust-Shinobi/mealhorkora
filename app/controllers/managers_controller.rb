class ManagersController < ApplicationController
    def new
        @users = User.paginate(page: params[:page]).where(superuser: 1)
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
end

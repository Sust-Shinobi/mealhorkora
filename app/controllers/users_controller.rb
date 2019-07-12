class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "SignUp Success!"
        end
    end

    def update

    end

    def destroy
    end

    def index
    end

    def show
        @user = User.find(params[:id])                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
    end

    private

    def user_params
        params.require(:user).permit(:name,:email,:password)
    end
end
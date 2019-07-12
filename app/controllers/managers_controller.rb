class ManagersController < ApplicationController
    def new
        @users = User.all
    end
end

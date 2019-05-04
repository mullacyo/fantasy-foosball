class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path
            flash[:success] = "User created!"
        else
            flash[:danger] = "Error, please try again."
        end
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name)
    end
end

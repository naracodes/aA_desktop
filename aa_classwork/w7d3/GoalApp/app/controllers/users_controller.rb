class UsersController < ApplicationController
    def new
        render :new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_goals_url(@user)
        else
            flash.now[:errors] = ["Password length can't be less than 6"]
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end

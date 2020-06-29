class SessionsController < ApplicationController

    before_action :ensure_logged_in, only:[:destroy]

    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(
            parmas[:user][:username],
            params[:user][:password]
        )
        if @user
            login!(@user)
            redirect_to users_url    
        else
            flash.now[:errors] = @user.errors.full_messages
            render :new
        end
    end

    def destroy
        logout!
        redirect_to new_session_url
    end



end

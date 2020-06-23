class SessionsController < ApplicationController

    def new
        if logged_in?
            redirect_to cats_url
        else
            render :new
        end
    end

    def create # Create User -> 
        user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        # params is a two-dimensional hash of key-value pairs defined in HTML inside the <form>

        # 
        if user
            # new_token = user.reset_session_token!
            # session[:session_token] = new_token
            # resetting the browser to the new_token
            login!(user)
            redirect_to cats_url
        else
            flash.now[:errors] = ['Invalid credentials']
            # flash.now[:errors] << 'Invalid credentials'
            render :new
        end
    end

    def destroy
        logout!
        redirect_to new_session_url
        # current_user.reset_session_token!
        # session[:session_token] = nil # Deleted the session token on the client side so they dont have garbage 
    end

    
end

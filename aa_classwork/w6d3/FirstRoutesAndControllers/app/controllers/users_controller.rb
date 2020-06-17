class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
        # render plain: "I'm in the index action!"
    end

    def show
        @user = User.find(params[:id])
        render json: @user
        # params = {
        # "controller": "users",
        # "action": "show",
        # "id": "2"
        # }
# https://open.appacademy.io/learn/swe-in-person/rails/basic-controllers-and-strong-params
        # params = {
        #     'id': 5,
        #     'some_category': {
        #     'a_key': 'another value',
        #     'a_second_key': 'yet another value',
        #     'inner_inner_hash': {
        #     'key': 'value'
        #         }
        #         },
        #     'something_else': 'aaahhhhh'
        #         }
        # render json: params[:something_else]
    end

    def create
        # params = {
        # "fav_food": "pizza", 
        # "controller": "users",
        # "action": "create"
        # }
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: @user.errors.full_messages, status: :unprocessable_entity
        end
        #use @user.save in conditionals. If not needed in conditional use @user.save!
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to users_url(@user)
        else
            render json: @user.errors.full_messages, status: 422
        end
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_url
    end



    private    
    def user_params
        # debugger
        params.require(:user).permit(:name, :email)
        # params.require(:abc).permit(:a, :b) ----> in PostMan would be abc[a], next line abc[b]
    end

end


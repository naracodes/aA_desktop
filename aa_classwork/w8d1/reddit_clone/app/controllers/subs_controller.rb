class SubsController < ApplicationController

    before_action :ensure_logged_in, only:[:edit,:update]

    def new
        render :new
    end

    def create
        @sub = Sub.new(sub_params)
        if @sub.save
            redirect_to sub_url(@sub)
        else
            flash.now[:errors] = @sub.errors.full_messages
            render :new
        end
    end

    def index
        @subs = Sub.all
        render :index

    end

    def show
        @sub = Sub.find_by(id: params[:id])
        render :show
    end

    def edit
        render :edit
    end

    def update
        @sub = Sub.find_by(id: params[:id])
        if @sub.save
            redirect_to sub_url(@sub)
        else
            flash.now[:errors] = @sub.errors.full_messages
            render :edit
        end
    end

    private
    def sub_params
        params.require(:sub).permit(:title,:description)
    end
end

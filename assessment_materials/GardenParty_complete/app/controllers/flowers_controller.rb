class FlowersController < ApplicationController
    
    def new
        @flower = Flower.new
        render :new
    end

    def create
        @flower = Flower.new(flower_params)

        if @flower.save
            redirect_to garden_url(@flower.garden_id)
        else
            redirect_to garden_url(@flower.garden_id)
        end
    end

    def destroy
        @flower = Flower.find_by(id: params[:id])
        @flower.delete
        redirect_to garden_url(@flower.garden_id)
    end


    private
    def flower_params
        params.require(:flower).permit(:flower_type, :gardener_id, :garden_id)
    end
end
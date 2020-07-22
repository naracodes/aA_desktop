class Api::PokemonController < ApplicationController
    def index
        @pokemon = Pokemon.all
        render :index
    end

    def show
        @pokemon = Pokemon.find_by(id: params[:id])
        render :show
        # render :show using jbuilder is more obj oriented than 'render json'
    end

    def new
        @pokemon = Pokemon.new
        render :new
    end

    def create
        @pokemon = Pokemon.new(pokemon_params)

        if @pokemon.save
            render :show
        else
            flash.now[:errors] = pokemon.errors.full_messages
            render :index
        end
    end

    private

    def pokemon_params
        params.require(:pokemon).permit(:name, :attack, :defense, :poke_type, :moves, :image_url)
    end
end
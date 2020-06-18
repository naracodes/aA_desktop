class ArtworksController < ApplicationController
    def index
        # # debugger
        @artist = User.find(params[:artist_id]) # -> controllers/1/users/12
        # render json: @artist.artworks # -> users/12/artworks
        redirect_to artwork_url(@artist)

        # @artworks = Artwork.all
        # render json: @artworks
    end
    # def show
    #     @user = User.find(params[:id])
    #     render json: @user
    # end

    def show
        @artwork = Artwork.find(self.params[:id])
        render json: @artwork
        # redirect_to users_url
    end

    def create
        @artwork = Artwork.new(artwork_params)
        if @artwork.save
            render json: @artwork
        else
            render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end
    
    end

    def update
        @artwork = Artwork.find(params[:id])
        if @artwork.update(artwork_params)
            redirect_to artworks_url(@artwork)
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end
    
    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy
        redirect_to artworks_url
    end



    private    
    def artwork_params
        params.require(:artwork).permit(:title, :image_url)
    end
end
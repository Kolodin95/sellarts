class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @artworks = Artwork.all
  end

  def show
    @artworks = Artwork.find(params[:id])
  end

  def new
    @artworks = Artwork.new
  end

  def create
    @artworks = Artwork.new(params_artworks)
    @artworks.save
    if @artworks.save
      redirect_to artwork_path(@artworks)
    else
      render :new
    end
  end

  private

  def params_artworks
    params.require(:artworks).permit(:title, :author, :creation_date, :denomination, :price)
  end
end

class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(params_artworks)
    @artwork.save
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render :new
    end
  end

  private

  def params_artworks
    params.require(:artwork).permit(:title, :author, :creation_date, :denomination, :price)
  end
end

class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @artworks = policy_scope(Artwork)

  end

  def show
    @artwork = Artwork.find(params[:id])
    authorize @artwork
  end

  def new
    @artwork = Artwork.new
    authorize @artwork
  end

  def create
    @artwork = Artwork.new(params_artworks)
    authorize @artwork
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render :new
    end
  end

  private

  def params_artworks
    params.require(:artwork).permit(:title, :author, :creation_date, :denomination, :price, :photo)
  end
end

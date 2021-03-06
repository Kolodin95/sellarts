class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    if params[:query].present?
      @artworks = policy_scope(Artwork).search_by_title_and_author_and_denomination(params[:query])
    else
      @artworks = policy_scope(Artwork)
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
    @booking = Booking.new
    authorize @artwork
  end

  def new
    @artwork = Artwork.new
    authorize @artwork
  end

  def create
    @artwork = Artwork.new(params_artworks)
    @artwork.user = current_user
    authorize @artwork
    if @artwork.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def params_artworks
    params.require(:artwork).permit(:title, :author, :creation_date, :denomination, :price, :address, :photo)
  end
end

class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @artwork = Artwork.find(params[:artwork_id])
    authorize @booking
   end

  def create
    @booking = Booking.new(params_bookings)
    @artwork = Artwork.find(params[:artwork_id]) 
    @booking.artwork = @artwork
    @booking.user = current_user
    authorize @booking
    if @booking.save 
      # redirect_to pages_dashboard_path() voir avec le pro des dashboard
    else  
      render :new
    end  
  end  
  
  private

  def params_bookings
    params.require(:booking).permit(:start_date, :end_date)
  end
end

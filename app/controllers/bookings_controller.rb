class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(params_bookings)
    authorize @booking
    if booking.save 
      # redirect_to pages_dashboard_path() voir avec le pro des dashboard
    else  
      render :new
    end  
  end  
  
  private

  def params_bookings
    params.require(:booking).permit(:start_date, :end_date, :artwork_id )
  end
end

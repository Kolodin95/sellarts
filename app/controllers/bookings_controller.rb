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
     redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params_bookings)
    redirect_to dashboard_path
  end

  def booked
    @booking_pending = Booking.find(params[:id])
    authorize @booking_pending
    @booking_pending.update(validated: true)
    redirect_to dashboard_path
  end

  def destroy
    @booking_pending = Booking.find(params[:id])
    authorize @booking_pending
    @booking_pending.destroy
    redirect_to dashboard_path
  end

  private

  def params_bookings
    params.require(:booking).permit(:start_date, :end_date, :validated)
  end
end

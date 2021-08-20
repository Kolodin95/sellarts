class PagesController < ApplicationController
  def dashboard
    # booking.all where user == current_user
    @bookings = Booking.where(user: current_user)
    @artworks = Artwork.where(user: current_user)
    @bookings_pending = Booking.joins(:artwork).where(validated: false, artworks: { user: current_user })
  end


  def booked
    @booking_pending = Booking.find(params[:id])
    @booking_pending.update(validated: true)
    redirect_to dashboard_path
  end
end

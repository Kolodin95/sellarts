class PagesController < ApplicationController
  def dashboard
    # booking.all where user == current_user
    @bookings = Booking.where(user: current_user)
    @artworks = Artwork.where(user: current_user)
  end
end

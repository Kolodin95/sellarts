class Booking < ApplicationRecord
  belongs_to :artwork
  belongs_to :user

  def total_price
    diff_date = end_date - start_date
    calculated_price = (artwork.price * diff_date).to_i
    return "#{calculated_price}"
  end
end

class Booking < ApplicationRecord
  belongs_to :artwork
  belongs_to :user

  def total_price
    diff_date = end_date - start_date
    return (artwork.price * diff_date).to_i
  end
end

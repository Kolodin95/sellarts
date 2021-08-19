class RemoveStatusFromBooking < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :status
    remove_column :bookings, :price
  end
end

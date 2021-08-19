class AddStatusToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :validated, :boolean, default: false
  end
end

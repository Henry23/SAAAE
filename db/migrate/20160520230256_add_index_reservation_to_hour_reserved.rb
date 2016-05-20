class AddIndexReservationToHourReserved < ActiveRecord::Migration
  def change
    add_column :hour_reserveds, :reservation_id, :integer
    add_index :hour_reserveds, :reservation_id
  end
end

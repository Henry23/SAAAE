class AddToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :reserved_day, :date
  end
end

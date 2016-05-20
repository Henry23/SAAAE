class AddHoursToHourReserved < ActiveRecord::Migration
  def change
    add_column :hour_reserveds, :hourdate_reserved_id, :integer
    add_index :hour_reserveds, :hourdate_reserved_id
  end
end
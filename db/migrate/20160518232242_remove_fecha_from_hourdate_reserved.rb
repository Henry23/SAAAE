class RemoveFechaFromHourdateReserved < ActiveRecord::Migration
  def change
    remove_column :hourdate_reserveds, :fecha, :date
  end
end

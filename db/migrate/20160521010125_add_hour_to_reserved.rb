class AddHourToReserved < ActiveRecord::Migration
  def change
    add_column :reservations, :hourdate_reserved_id, :integer
    add_index :reservations, :hourdate_reserved_id
  end
end

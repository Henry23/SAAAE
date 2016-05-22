class RemoveIndexFromReservacions < ActiveRecord::Migration
  def change
        remove_column :reservations, :hourdate_reserved_id, :integer
  end
end

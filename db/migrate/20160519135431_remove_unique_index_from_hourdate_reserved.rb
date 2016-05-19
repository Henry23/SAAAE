class RemoveUniqueIndexFromHourdateReserved < ActiveRecord::Migration
  def change
    remove_column :hourdate_reserveds, :hourdate_reserved_id, :integer
  end
end

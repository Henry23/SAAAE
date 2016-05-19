class RemoveUniqueIndexFromHourdateReserveds < ActiveRecord::Migration
  def change
    remove_column :hourdate_reserveds, :study_carrel_id, :integer
  end
end

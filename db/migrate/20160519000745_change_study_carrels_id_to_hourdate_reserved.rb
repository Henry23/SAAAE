class ChangeStudyCarrelsIdToHourdateReserved < ActiveRecord::Migration
  def change
    change_column :hourdate_reserveds, :study_carrel_id, :integer
  end
end

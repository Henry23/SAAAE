class RemoveIndexFromStudyCarrels < ActiveRecord::Migration
  def change
    remove_column :study_carrels, :hourdate_reserved_id, :integer
  end
end

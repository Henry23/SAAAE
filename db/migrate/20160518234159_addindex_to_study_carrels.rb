class AddindexToStudyCarrels < ActiveRecord::Migration
  def change
    add_column :study_carrels, :hourdate_reserved_id, :integer
    add_index :study_carrels, :hourdate_reserved_id, :unique => true
  end
end

class AddindexCarrelsToHourdateReserved < ActiveRecord::Migration
  def change
    add_column :hourdate_reserveds, :study_carrel_id, :string
    add_index :hourdate_reserveds, :study_carrel_id, :unique => true
  end
end

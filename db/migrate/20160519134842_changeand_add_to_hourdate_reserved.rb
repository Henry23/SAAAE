class ChangeandAddToHourdateReserved < ActiveRecord::Migration
  def change
    change_column :hourdate_reserveds, :study_carrel_id, :integer, unique: false
    add_column :hourdate_reserveds, :enable, :boolean, :default => true
  end
  
end

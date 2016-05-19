class RemoveEnableFromStudyCarrels < ActiveRecord::Migration
  def change
    remove_column :study_carrels, :enable, :boolean, :default => true
  end
end

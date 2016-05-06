class AddEnableToStudyCarrels < ActiveRecord::Migration
  def change
        add_column :study_carrels, :enable, :boolean, :default => true
  end
end

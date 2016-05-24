class AddEnableTomorrowToHourDate < ActiveRecord::Migration
  def change
    add_column :hourdate_reserveds, :enableTomorrow, :boolean, :default => true
  end
end

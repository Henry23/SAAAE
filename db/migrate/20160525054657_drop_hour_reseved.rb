class DropHourReseved < ActiveRecord::Migration
  def change
    drop_table :hour_reserveds
  end
end

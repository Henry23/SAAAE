class CreateHourReserveds < ActiveRecord::Migration
  def change
    create_table :hour_reserveds do |t|

      t.timestamps null: false
    end
  end
end

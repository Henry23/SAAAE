class CreateHoursReserveds < ActiveRecord::Migration
  def change
    create_table :hours_reserveds do |t|
      t.datetime :hour

      t.timestamps null: false
    end
  end
end

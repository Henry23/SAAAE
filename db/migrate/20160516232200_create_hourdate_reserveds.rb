class CreateHourdateReserveds < ActiveRecord::Migration
  def change
    create_table :hourdate_reserveds do |t|
      t.time :hora
      t.date :fecha

      t.timestamps null: false
    end
  end
end

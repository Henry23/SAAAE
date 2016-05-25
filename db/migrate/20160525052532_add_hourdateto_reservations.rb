class AddHourdatetoReservations < ActiveRecord::Migration
  def change
        add_column :reservations, :hourdate_reserved_id, :string

  end
end

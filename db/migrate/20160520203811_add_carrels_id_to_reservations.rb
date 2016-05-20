class AddCarrelsIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :study_carrel_id, :integer
    add_index :reservations, :study_carrel_id
    add_column :reservations, :student_id, :integer
    add_index :reservations, :student_id
  end
end

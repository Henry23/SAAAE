class AddindexReservationToStudentsReserved < ActiveRecord::Migration
  def change
    add_column :students_reserveds, :reservation_id, :integer
    add_index :students_reserveds, :reservation_id
    add_column :students_reserveds, :student_id, :integer
    add_index :students_reserveds, :student_id
  end
end

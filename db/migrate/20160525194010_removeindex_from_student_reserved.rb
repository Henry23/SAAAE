class RemoveindexFromStudentReserved < ActiveRecord::Migration
  def change
    remove_column :students_reserveds, :student_id, :integer
  end
end

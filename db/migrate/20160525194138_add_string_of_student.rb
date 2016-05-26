class AddStringOfStudent < ActiveRecord::Migration
  def change
    add_column :students_reserveds, :student_id, :string
  end
end

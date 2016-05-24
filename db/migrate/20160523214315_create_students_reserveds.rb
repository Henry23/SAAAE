class CreateStudentsReserveds < ActiveRecord::Migration
  def change
    create_table :students_reserveds do |t|

      t.timestamps null: false
    end
  end
end

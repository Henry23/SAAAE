class AddRfididToStudents < ActiveRecord::Migration
  def change
    add_column :students, :rfid_id, :string
  end
end

class ChangesrfidIdfromStudents < ActiveRecord::Migration
  def change
    change_column :students, :rfid_id, :int4, :limit => 4   # int (4 bytes)
  end
end

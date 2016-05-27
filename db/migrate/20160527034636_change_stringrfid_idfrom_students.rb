class ChangeStringrfidIdfromStudents < ActiveRecord::Migration
  def change
    change_column :students, :rfid_id, :string
  end
end

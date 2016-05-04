class RemoveAccountNumberFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :account_number, :integer
  end
end

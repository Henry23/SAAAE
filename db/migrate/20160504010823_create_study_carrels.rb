class CreateStudyCarrels < ActiveRecord::Migration
  def change
    create_table :study_carrels do |t|
      t.integer :max_number
      t.string :code

      t.timestamps null: false
    end
  end
end

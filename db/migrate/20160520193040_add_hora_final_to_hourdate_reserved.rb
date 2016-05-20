class AddHoraFinalToHourdateReserved < ActiveRecord::Migration
  def change
    add_column :hourdate_reserveds, :horaFinal, :time
  end
end

class HourdateReserved < ActiveRecord::Base
    belongs_to :study_carrel
    belongs_to :hour_reserved
    
    validates_presence_of :hora,
                  message: "no puede estar en blanco"
    validates_presence_of :study_carrel_id,
                  message: "no puede estar en blanco"

end

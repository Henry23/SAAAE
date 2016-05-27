class Reservation < ActiveRecord::Base
    has_many :study_carrel
    has_many :student
    has_many :hourdate_reserved
    has_many :students_reserved
    
    #before_save :check
    
    validates_presence_of :study_carrel_id,
                  message: "no puede estar en blanco"
                 
    validates_presence_of :student_id,
                  message: "no puede estar en blanco"
                  
    validates_presence_of :reserved_day,
                  message: "no puede estar en blanco"
    
    validates_presence_of :hourdate_reserved_id,
                  message: "no puede estar en blanco" 
                  
                  
    validates :hourdate_reserved_id, length: { minimum: 5 }

    def check 
        if self.hourdate_reserved_id.split(",").size == 1
            return false
        end
    end

end

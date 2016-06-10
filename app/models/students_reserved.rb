class StudentsReserved < ActiveRecord::Base
    belongs_to :reservation
    belongs_to :student
    
    validates_presence_of :reservation_id,
                  message: "No puede estar en blanco"
    validates_presence_of :student_id,
                  message: "No puede estar en blanco"
                  
end

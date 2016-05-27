class Reservation < ActiveRecord::Base
    has_many :study_carrel
    has_many :student
    has_many :hourdate_reserved
    has_many :students_reserved
    
    #after_save :check
    
    validates_presence_of :study_carrel_id,
                  message: "no puede estar en blanco"
                 
    validates_presence_of :student_id,
                  message: "no puede estar en blanco"
                  
    validates_presence_of :reserved_day,
                  message: "no puede estar en blanco"
    
    validates_presence_of :hourdate_reserved_id,
                  message: "no puede estar en blanco" 
                  
                  
    validates :hourdate_reserved_id, length: { minimum: 5 ,
                message: "Seleccione al menos una hora para reservar"}

    def check
        @horas = self.hourdate_reserved_id.split(",")
        @fecha = self.reserved_day
        @horas.each do |t|
        @horafecha = StudyCarrel.includes(:hourdate_reserved).find(t[2][2].to_f)
            if @fecha == Date.today 
                #hoy
                @horafecha.hourdate_reserved.enable = false
            else
                #mañana
                @horafecha.hourdate_reserved.enableTomorrow = false
            end
            @horafecha.save
        end    
    end

end

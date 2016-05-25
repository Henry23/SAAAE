class HourdateReserved < ActiveRecord::Base
    belongs_to :study_carrel
    belongs_to :reservation
    has_many :hour_reserved
    
    validates_presence_of :hora,
                  message: "La hora no puede estar en blanco"
    validates_presence_of :study_carrel_id,
                  message: "El id no puede estar en blanco"
                  
                  
    scope :enable, -> { where(enable: true) }
    
    #scope :get_hour, -> { where( "hora > Time.current.hour") }
    
   #  scope :by_hour, ->(hour) { where("hora('hour', time) = ?", hour) }
     
     
     def self.get_hour
        
     end

end


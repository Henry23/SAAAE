class Reservation < ActiveRecord::Base
    has_many :study_carrel
    has_many :student
    has_many :hour_reserved
    

    
end

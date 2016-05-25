class Reservation < ActiveRecord::Base
    has_many :study_carrel
    has_many :student
    has_many :hourdate_reserved
    has_many :students_reserved

end

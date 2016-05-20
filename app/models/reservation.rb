class Reservation < ActiveRecord::Base
    has_many :study_carrel
    has_many :student

end

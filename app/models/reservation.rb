class Reservation < ActiveRecord::Base
    has_many :study_carrel
    has_many :student
    has_many :hourdate_reserved
    
    
    before_save do
        self.hourdate_reserved_id.gsub!(/[\[\]\"]/, "") if attribute_present?("hourdate_reserved_id")
        end

end

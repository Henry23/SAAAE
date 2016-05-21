class StudyCarrel < ActiveRecord::Base
    has_many :hourdate_reserved
    belongs_to :reservation
    
    scope :enable, -> { where(enable: true) }
end

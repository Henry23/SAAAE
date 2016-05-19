class StudyCarrel < ActiveRecord::Base
    has_many :hourdate_reserved
    scope :enable, -> { where(enable: true) }
end

class StudyCarrel < ActiveRecord::Base
    scope :enable, -> { where(enable: true) }
end

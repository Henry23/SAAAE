class StudyCarrel < ActiveRecord::Base
    has_many :hourdate_reserved
    belongs_to :reservation
    validates_presence_of :code,
                  message: "El código no puede estar en blanco"
    validates_presence_of :max_number,
                  message: "El número máximo no puede estar en blanco"
    scope :enable, -> { where(enable: true) }
end

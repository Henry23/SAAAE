class StudentsReserved < ActiveRecord::Base
    belongs_to :reservation
    belongs_to :student
end

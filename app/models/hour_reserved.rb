class HourReserved < ActiveRecord::Base
      belongs_to :reservation
      belongs_to :hourdate_reserved
      
      validates_presence_of :hourdate_reserved_id,
                  message: "la hora esta vacia"
      
end

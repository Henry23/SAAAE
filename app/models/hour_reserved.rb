class HourReserved < ActiveRecord::Base
      belongs_to :reservation
      belongs_to :hourdate_reserved
end

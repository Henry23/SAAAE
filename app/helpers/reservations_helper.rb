module ReservationsHelper
    
    def checked(area)
        @reservation.expertise.nil? ? false : @reservation.expertise.match(area)
    end

end

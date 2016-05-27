class ArduinoApiController < ApplicationController
    def reservations_info()
        #@reservaciones = Reservation.includes(:students_reserveds).all
        # id del cubiculo   @reservaciones.study_carrel_id
        #pero ahi son todas las resevaciones 
        # @reservaciones.each do |reservacion|
        # @cubiculo = StudyCarrel.find_by_id(reservacion.study_carrel_id)
        #@cubiculo.max_number , @cubiculo.code etc....
        #end
        @reservaciones = Reservation.all
        #params[:id]
        respond_to do |format|
            format.json{render json: @reservaciones }
        end
    end
end
#falta validar mas 
#y terminar la reservacion para los estuantes 
#solo eso
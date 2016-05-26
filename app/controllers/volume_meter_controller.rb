class VolumeMeterController < ApplicationController
    
    load_and_authorize_resource

    def index
    
    end    
    
    def study_carrel_params
      params.require(:study_carrel).permit(:max_number, :code)
    end
end
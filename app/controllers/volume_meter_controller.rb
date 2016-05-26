class VolumeMeterController < ApplicationController
    
    load_and_authorize_resource

    def index
    end    
    
    rescue_from CanCan::AccessDenied do |exception|
     redirect_to root_url, :alert => exception.message
   end
    
end
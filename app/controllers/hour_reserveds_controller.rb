class HourReservedsController < ApplicationController
  before_action :set_hour_reserved, only: [:show, :edit, :update, :destroy]

  # GET /hour_reserveds
  # GET /hour_reserveds.json
  def index
    @hour_reserveds = HourReserved.all
  end

  # GET /hour_reserveds/1
  # GET /hour_reserveds/1.json
  def show
  end

  # GET /hour_reserveds/new
  def new
    @hour_reserved = HourReserved.new
    @reservation = Reservation.find(params[:reservations_id])
    @hourdate_reserved = HourdateReserved.all
    
  end

  # GET /hour_reserveds/1/edit
  def edit
  end

  # POST /hour_reserveds
  # POST /hour_reserveds.json
  def create
    @hour_reserved = HourReserved.new(hour_reserved_params)
    #tenes q separar los ids en hour_reserved_params
    #hacer un for de 0 hasta hour_reserved_params.id?
    # para cada uno de los hour_reserved_params.id creas un nuevo @hour_reserved y lo salvas
    
    #for int=0; i<@hour_reserved.hourdate_reserved_id.length(); i++)   asi seria en java
    #if(@hour_reserved.hourdate_reserved_id[i]!="")
    # nuevaReservacion = HourReserved.new(@hour_reserved.hourdate_reserved_id[i],hour_reserved.reservation_id)
    # nuevaReservacion.save
    respond_to do |format|
      if @hour_reserved.save
        format.html { redirect_to rstudent_path(@hour_reserved.reservation_id), notice: 'Hour reserved was successfully created.' }
        format.json { render :show, status: :created, location: @hour_reserved }
      else
        format.html { render :new }
        format.json { render json: @hour_reserved.errors, status: :unprocessable_entity }
      end
  end
  end

  # PATCH/PUT /hour_reserveds/1
  # PATCH/PUT /hour_reserveds/1.json
  def update
    respond_to do |format|
      if @hour_reserved.update(hour_reserved_params)
        format.html { redirect_to @hour_reserved, notice: 'Hour reserved was successfully updated.' }
        format.json { render :show, status: :ok, location: @hour_reserved }
      else
        format.html { render :edit }
        format.json { render json: @hour_reserved.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hour_reserveds/1
  # DELETE /hour_reserveds/1.json
  def destroy
    @hour_reserved.destroy
    respond_to do |format|
      format.html { redirect_to hour_reserveds_url, notice: 'Hour reserved was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hour_reserved
      @hour_reserved = HourReserved.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hour_reserved_params
      params.require(:hour_reserved).permit( :reservation_id,  :hourdate_reserved_id)
    end
    
end

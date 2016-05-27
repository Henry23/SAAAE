class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  require 'date'

  load_and_authorize_resource
  
  #before_filter :new
  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @_date = Date.today 
    @_tomorrow = Date.today + 1
    @reservation = Reservation.new
    @carrels = StudyCarrel.includes(:hourdate_reserved).find(params[:carrel_id])
    @student = Student.find(params[:student_id])
  end
  

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)
    @carrels = StudyCarrel.includes(:hourdate_reserved).find(@reservation.study_carrel_id)
    @student = Student.find(@reservation.student_id)
    @_tomorrow = Date.today + 1
    @_date = Date.today 
    respond_to do |format|
      if @reservation.save
          #@horasFecha = StudyCarrel.includes(:hourdate_reserved).find_by_id(@reservation.study_carrel_id)
          #@idArray = @reservation.hourdate_reserved_id.split(",")
          #@idArray.each do |t|
          #  @horasFecha2 = HourdateReserved.find_by_id(t[2][2].to_f)
          #  if @reservation.reserved_day == @_date
          #    @horasFecha2.enable = false
          #  else
          #    @horasFecha2.enableTomorrow = false
          #  end
          #  @horasFecha2.save
          #end
          format.html { redirect_to resassing_path(@reservation), notice: 'Reservation was successfully created.' }
          format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:reserved_day, :study_carrel_id, :student_id, hourdate_reserved_id:[] )
    end
    
    rescue_from CanCan::AccessDenied do |exception|
     redirect_to root_url, :alert => exception.message
   end

end

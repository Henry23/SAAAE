class HourdateReservedsController < ApplicationController
  before_action :set_hourdate_reserved, only: [:show, :edit, :update, :destroy]

  # GET /hourdate_reserveds
  # GET /hourdate_reserveds.json
  def index
    @hourdate_reserveds = HourdateReserved.all
  end

  # GET /hourdate_reserveds/1
  # GET /hourdate_reserveds/1.json
  def show
  end

  # GET /hourdate_reserveds/new
  def new
    @hourdate_reserved = HourdateReserved.new
    @carrels = StudyCarrel.all
  end

  # GET /hourdate_reserveds/1/edit
  def edit
  end

  # POST /hourdate_reserveds
  # POST /hourdate_reserveds.json
  def create
    @hourdate_reserved = HourdateReserved.new(hourdate_reserved_params)
    respond_to do |format|
      if @hourdate_reserved.save
        format.html { redirect_to @hourdate_reserved, notice: 'Hourdate reserved was successfully created.' }
        format.json { render :show, status: :created, location: @hourdate_reserved }
      else
        format.html { render :new }
        format.json { render json: @hourdate_reserved.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hourdate_reserveds/1
  # PATCH/PUT /hourdate_reserveds/1.json
  def update
    respond_to do |format|
      if @hourdate_reserved.update(hourdate_reserved_params)
        format.html { redirect_to @hourdate_reserved, notice: 'Hourdate reserved was successfully updated.' }
        format.json { render :show, status: :ok, location: @hourdate_reserved }
      else
        format.html { render :edit }
        format.json { render json: @hourdate_reserved.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hourdate_reserveds/1
  # DELETE /hourdate_reserveds/1.json
  def destroy
    @hourdate_reserved.destroy
    respond_to do |format|
      format.html { redirect_to hourdate_reserveds_url, notice: 'Hourdate reserved was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hourdate_reserved
      @hourdate_reserved = HourdateReserved.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hourdate_reserved_params
      params.require(:hourdate_reserved).permit(:hora, :study_carrel_id)
    end
end

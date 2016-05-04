class HoursReservedsController < ApplicationController
  before_action :set_hours_reserved, only: [:show, :edit, :update, :destroy]

  # GET /hours_reserveds
  # GET /hours_reserveds.json
  def index
    @hours_reserveds = HoursReserved.all
  end

  # GET /hours_reserveds/1
  # GET /hours_reserveds/1.json
  def show
  end

  # GET /hours_reserveds/new
  def new
    @hours_reserved = HoursReserved.new
  end

  # GET /hours_reserveds/1/edit
  def edit
  end

  # POST /hours_reserveds
  # POST /hours_reserveds.json
  def create
    @hours_reserved = HoursReserved.new(hours_reserved_params)

    respond_to do |format|
      if @hours_reserved.save
        format.html { redirect_to @hours_reserved, notice: 'Hours reserved was successfully created.' }
        format.json { render :show, status: :created, location: @hours_reserved }
      else
        format.html { render :new }
        format.json { render json: @hours_reserved.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hours_reserveds/1
  # PATCH/PUT /hours_reserveds/1.json
  def update
    respond_to do |format|
      if @hours_reserved.update(hours_reserved_params)
        format.html { redirect_to @hours_reserved, notice: 'Hours reserved was successfully updated.' }
        format.json { render :show, status: :ok, location: @hours_reserved }
      else
        format.html { render :edit }
        format.json { render json: @hours_reserved.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours_reserveds/1
  # DELETE /hours_reserveds/1.json
  def destroy
    @hours_reserved.destroy
    respond_to do |format|
      format.html { redirect_to hours_reserveds_url, notice: 'Hours reserved was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hours_reserved
      @hours_reserved = HoursReserved.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hours_reserved_params
      params.require(:hours_reserved).permit(:hour)
    end
end

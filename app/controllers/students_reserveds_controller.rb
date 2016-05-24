class StudentsReservedsController < ApplicationController
  before_action :set_students_reserved, only: [:show, :edit, :update, :destroy]

  # GET /students_reserveds
  # GET /students_reserveds.json
  def index
    @students_reserveds = StudentsReserved.all
  end

  # GET /students_reserveds/1
  # GET /students_reserveds/1.json
  def show
  end

  # GET /students_reserveds/new
  def new
    @students_reserved = StudentsReserved.new
    @reservation = Reservation.find(params[:id])
    @carrels = StudyCarrel.find_by_id(@reservation.study_carrel_id)
  end

  # GET /students_reserveds/1/edit
  def edit
  end

  # POST /students_reserveds
  # POST /students_reserveds.json
  def create
    @students_reserved = StudentsReserved.new(students_reserved_params)

    respond_to do |format|
      if @students_reserved.save
        format.html { redirect_to @students_reserved, notice: 'Students reserved was successfully created.' }
        format.json { render :show, status: :created, location: @students_reserved }
      else
        format.html { render :new }
        format.json { render json: @students_reserved.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students_reserveds/1
  # PATCH/PUT /students_reserveds/1.json
  def update
    respond_to do |format|
      if @students_reserved.update(students_reserved_params)
        format.html { redirect_to @students_reserved, notice: 'Students reserved was successfully updated.' }
        format.json { render :show, status: :ok, location: @students_reserved }
      else
        format.html { render :edit }
        format.json { render json: @students_reserved.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students_reserveds/1
  # DELETE /students_reserveds/1.json
  def destroy
    @students_reserved.destroy
    respond_to do |format|
      format.html { redirect_to students_reserveds_url, notice: 'Students reserved was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_students_reserved
      @students_reserved = StudentsReserved.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def students_reserved_params
      params.fetch(:students_reserved, {})
    end
end

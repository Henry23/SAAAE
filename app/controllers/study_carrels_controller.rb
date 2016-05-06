class StudyCarrelsController < ApplicationController
  before_action :set_study_carrel, only: [:show, :edit, :update, :destroy]

  # GET /study_carrels
  # GET /study_carrels.json
  def index
    @study_carrels = StudyCarrel.all
  end

  def reserve
    @study_carrel = StudyCarrel.find(params[:id])
  end

  def carrels
    @study_carrels = StudyCarrel.all
    @student = Student.find(params[:id])
  end
  # GET /study_carrels/1
  # GET /study_carrels/1.json
  def show
  end

  # GET /study_carrels/new
  def new
    @study_carrel = StudyCarrel.new
  end

  # GET /study_carrels/1/edit
  def edit
  end

  # POST /study_carrels
  # POST /study_carrels.json
  def create
    @study_carrel = StudyCarrel.new(study_carrel_params)

    respond_to do |format|
      if @study_carrel.save
        format.html { redirect_to @study_carrel, notice: 'Study carrel was successfully created.' }
        format.json { render :show, status: :created, location: @study_carrel }
      else
        format.html { render :new }
        format.json { render json: @study_carrel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_carrels/1
  # PATCH/PUT /study_carrels/1.json
  def update
    respond_to do |format|
      if @study_carrel.update(study_carrel_params)
        format.html { redirect_to @study_carrel, notice: 'Study carrel was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_carrel }
      else
        format.html { render :edit }
        format.json { render json: @study_carrel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_carrels/1
  # DELETE /study_carrels/1.json
  def destroy
    @study_carrel.destroy
    respond_to do |format|
      format.html { redirect_to study_carrels_url, notice: 'Study carrel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_carrel
      @study_carrel = StudyCarrel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_carrel_params
      params.require(:study_carrel).permit(:max_number, :code)
    end
end

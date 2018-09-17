class AbsencesController < ApplicationController
  before_action :set_absence, only: [:show, :update, :destroy]

  # GET /absences
  def index
    @absences = Absence.all

    render json: @absences
  end

  # GET /absences/1
  def show
    render json: @absence
  end

  # POST /absences
  def create
    @absence = Absence.new(absence_params)

    if @absence.save
      render json: @absence, status: :created, location: @absence
    else
      render json: @absence.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /absences/1
  def update
    if @absence.update(absence_params)
      render json: @absence
    else
      render json: @absence.errors, status: :unprocessable_entity
    end
  end

  # DELETE /absences/1
  def destroy
    @absence.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_absence
      @absence = Absence.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def absence_params
      params.require(:absence).permit(:startDate, :endDate, :comment)
    end
end

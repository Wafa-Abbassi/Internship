class TypeAbsencesController < ApplicationController
  before_action :set_type_absence, only: [:show, :update, :destroy]

  # GET /type_absences
  def index
    @type_absences = TypeAbsence.all

    render json: @type_absences
  end

  # GET /type_absences/1
  def show
    render json: @type_absence
  end

  # POST /type_absences
  def create
    @type_absence = TypeAbsence.new(type_absence_params)

    if @type_absence.save
      render json: @type_absence, status: :created, location: @type_absence
    else
      render json: @type_absence.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /type_absences/1
  def update
    if @type_absence.update(type_absence_params)
      render json: @type_absence
    else
      render json: @type_absence.errors, status: :unprocessable_entity
    end
  end

  # DELETE /type_absences/1
  def destroy
    @type_absence.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_absence
      @type_absence = TypeAbsence.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def type_absence_params
      params.require(:type_absence).permit(:idTypeAbs, :naameTypeAbs, :nbrDayMax)
    end
end

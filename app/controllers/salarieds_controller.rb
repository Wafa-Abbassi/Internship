class SalariedsController < ApplicationController
  before_action :set_salaried, only: [:show, :update, :destroy]

  # GET /salarieds
  def index
    @salarieds = Salaried.all

    render json: @salarieds
  end

  # GET /salarieds/1
  def show
    render json: @salaried
  end

  # POST /salarieds
  def create
    @salaried = Salaried.new(salaried_params)

    if @salaried.save
      render json: @salaried, status: :created, location: @salaried
    else
      render json: @salaried.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /salarieds/1
  def update
    if @salaried.update(salaried_params)
      render json: @salaried
    else
      render json: @salaried.errors, status: :unprocessable_entity
    end
  end

  # DELETE /salarieds/1
  def destroy
    @salaried.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salaried
      @salaried = Salaried.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def salaried_params
      params.fetch(:salaried, {})
    end
end

class MaintenancesController < ApplicationController
  before_action :set_maintenance, only: [:show, :destroy]

  def index
    @maintenances = Maintenance.all
  end

  def show
  end

  def new
    @maintenance = Maintenance.new
    @car = Car.find(params[:car_id])
  end

  def create
    @maintenance = Maintenance.new(params_maintenance)
    @car = Car.find(params[:car_id])
    @maintenance.car = @car
    if @maintenance.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @maintenance.destroy
  end

  private

  def set_maintenance
    @maintenance = Maintenance.find(params[:id])
  end

  def params_maintenance
    params.require(:maintenance).permit(:title, :done_date, :comment, photos: [])
  end
end

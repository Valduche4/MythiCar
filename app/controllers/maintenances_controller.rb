class MaintenancesController < ApplicationController
  before_action :set_maintenance, only: [:show, :destroy]
  def show
  end

  def new
    @car = Car.find(params[:car_id])
    @maintenance = Maintenance.new
  end

  def create
    @maintenance = Maintenance.new(params_maintenance)
    @car = Car.find(params[:car_id])
    @maintenance.car = @car
    @maintenance.save
  end

  def destroy
    @maintenance.destroy
  end

  private

  def set_maintenance
    @maintenance = Maintenance.find(params[:id])
  end

  def params_maintenance
    params.require(:maintenance).permit(:title, :done_date, :comment)
  end

end

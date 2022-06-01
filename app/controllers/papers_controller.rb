class PapersController < ApplicationController
  before_action :set_paper, only: [:show, :destroy]
  def show
  end

  def new
    @car = Car.find(params[:car_id])
    @paper = Paper.new
  end

  def create
    @paper = Paper.new(params_paper)
    @car = Car.find(params[:car_id])
    @paper.car = @car
    if @paper.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @paper.destroy
    redirect_to car_path(@paper.car)
  end

  private

  def set_paper
    @paper = Paper.find(params[:id])
  end

  def params_paper
    params.require(:paper).permit(:name, :valid_from, :valid_to, :authority, photo: [])
  end

end

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
    @paper.save
  end

  def destroy
  end

  private

  def set_paper
    @paper = Paper.find(params[:id])
  end

  def params_paper
    params.require(:paper).permit(:name, :valid_from, :valid_to, :authority)
  end
end

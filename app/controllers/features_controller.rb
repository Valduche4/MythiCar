class FeaturesController < ApplicationController
  before_action :set_feature, only: [:show, :edit, :update, :destroy]
  def show
  end

  def new
    @car = Car.find(params[:car_id])
    @feature = Feature.new
  end

  def create
    @feature = Feature.new(params_feature)
    @car = Car.find(params[:car_id])
    @feature.car = @car
    if @feature.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:car_id])
  end

  def update
    @car = Car.find(params[:car_id])
    if @feature.update(params_feature)
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @feature.destroy
    redirect_to car_path(@feature.car)
  end

  def feature
    
  end

  private

  def set_feature
    @feature = Feature.find(params[:id])
  end

  def params_feature
    params.require(:feature).permit(:spec, :last_date)
  end
end

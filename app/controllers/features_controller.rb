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
    @feature.save
  end

  def edit
  end

  def update
    @feature.update(params_feature)
  end

  def destroy
    @feature.destroy
  end

  private

  def set_feature
    @feature = Feature.find(params[:id])
  end

  def params_feature
    params.require(:feature).permit(:type, :last_date)
  end
end

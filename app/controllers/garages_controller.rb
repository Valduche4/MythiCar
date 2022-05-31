class GaragesController < ApplicationController
  def index
    @garages = Garage.all
  end
end

class GaragesController < ApplicationController
  def index
    @garages = Garage.all

    @markers = @garages.geocoded.map do |garage|
      {
        lat: garage.latitude,
        lng: garage.longitude,
        info_window: render_to_string(partial: "info_window", locals: { garage: garage }),
        # image_url: helpers.asset_url("/app/assets/images/MythiCar.png")
      }
    end
  end
end

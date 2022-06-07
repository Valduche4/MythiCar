class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @car = Car.new
  end
end

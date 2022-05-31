class ParticipationsController < ApplicationController
  def create
    @participation = Participation.find(params[:participation_id])
    @participation.validation = true
    @participation.save

    redirect_to events_path
  end
end

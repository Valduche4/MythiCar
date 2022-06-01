class ParticipationsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @participation = Participation.new(going: true)
    @participation.user = current_user
    @participation.event = @event

    if @participation.save
      redirect_to events_path
    else
      render :new
    end
  end
end

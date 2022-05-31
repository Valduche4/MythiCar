class ParticipationsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @participation = Participation.new(going: true)
    @participation.user = current_user
    @participation.event = @event
    @participation.save
    redirect_to events_path
  end

end

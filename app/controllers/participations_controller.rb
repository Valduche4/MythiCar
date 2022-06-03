class ParticipationsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @participation = Participation.new(going: true)
    @participation.user = current_user
    @participation.event = @event

    if @participation.save
      redirect_to event_path(@participation.event)
    else
      render :new
    end
  end

  def enroll
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

  def destroy
    @participation = Participation.find(params[:id])
    @participation.destroy

    redirect_to event_path(@participation.event)
  end

  def delete
    @participation = Participation.find(params[:id])
    @participation.destroy

    redirect_to events_path
  end

private

  def participation_params
    params.require(:participation).permit(:going, :user_id, :event_id)
  end
end

class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    event = event.find(params[:id])
    stream_for event
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

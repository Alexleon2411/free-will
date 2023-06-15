class EventChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    event = Event.find(params[:id])
    stream_for event
  end
end

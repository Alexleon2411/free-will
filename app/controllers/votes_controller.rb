class VotesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @preposition = Preposition.find(params[:proposition_id])
    @vote = Vote.new
    @vote.event = @event
    @vote.proposition = @prepositiion
    @vote.save
  end
end

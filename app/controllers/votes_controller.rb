class VotesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @proposition = Proposition.find(params[:proposition_id])
    @vote = Vote.new
    @vote.event = @event
    @vote.proposition = @proposition
    @vote.save
  end
end

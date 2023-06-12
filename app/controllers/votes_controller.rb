class VotesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @proposition = Proposition.find(params[:proposition_id])
    @vote = Vote.new
    @vote.proposition = @proposition
    @vote.proposition.event = @event
    @vote.user = current_user
    @vote.save!
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @proposition = Proposition.find(params[:proposition_id])
    @user_proposition = @event.votes.where(user: current_user)[0].proposition == @proposition
    @user_vote = @event.votes.find_by(user: current_user)
    @user_vote.destroy
    redirect_to event_path(@event)
  end
end

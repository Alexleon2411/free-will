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
  def update
    @vote = Vote.update
  end
  def destroy
    @user_vote = Event.find(params[:event_id]).votes.where(user: User.current_user)
    if @user_vote.exists?
      @user_vote.destroy
    else
      render :create
    end
  end
end

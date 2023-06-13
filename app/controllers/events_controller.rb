class EventsController < ApplicationController
  before_action :set_event, only: [:show, :destroy, :update, :edit, :status]

  def index
    @events = Event.all.order(created_at: :desc)
    @current_user_events = current_user.events.order(created_at: :desc)

  end

  def show
    @admin = @event.user
    @propositions = Proposition.all
    @proposition = Proposition.new
    @vote = Vote.new
    @current_user_vote = @event.votes.find_by(user: current_user)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @user = current_user
    @event.user = @user
    if @event.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def status
    @event.update(status: false)
    redirect_to event_path(@event)
  end

  def update
    if @event.update(event_params)
      redirect_to events_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :status)
  end
end

class PropositionsController < ApplicationController
  before_action :set_event, only: [:destroy, :update, :edit]

  def new
    @event = Event.find(params[:event_id])
    @proposition = Proposition.new
    @proposition.event_id = @event
    redirect_to event_path(@event)
  end

  def create
    @event = Event.find(params[:event_id])
    @proposition = Proposition.new(proposition_params)
    @proposition.event = @event
    if @proposition.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:event_id])
  end

  def update
    if @proposition.update(proposition_params)
      redirect_to proposition_path(@proposition)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @proposition.destroy
    redirect_to propositions_path, status: :see_other
  end

  private

  def set_event
    @proposition = Proposition.find(params[:id])
  end

  def proposition_params
    params.require(:proposition).permit(:content)
  end
end

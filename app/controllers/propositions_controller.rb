class PropositionsController < ApplicationController
  before_action :set_event, only: [:destroy, :update, :edit]
  def new
    @proposition = Event.new
  end

  def create
    @proposition = Proposition.new(proposition_params)
    @user = current_user
    @proposition.user = @user
    if @proposition.save
      redirect_to propositions_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
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

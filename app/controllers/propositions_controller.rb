class PropositionsController < ApplicationController
  before_action :set_event, only: [:destroy, :update, :edit]
  def new
    @preposition = Event.new
  end

  def create
    @preposition = Preposition.new(preposition_params)
    @user = current_user
    @preposition.user = @user
    if @preposition.save
      redirect_to prepositions_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @preposition.update(preposition_params)
      redirect_to preposition_path(@preposition)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @preposition.destroy
    redirect_to prepositions_path, status: :see_other
  end

  private

  def set_event
    @preposition = Preposition.find(params[:id])
  end

  def preposition_params
    params.require(:preposition).permit(:content)
  end
end

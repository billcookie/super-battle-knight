class ObligationsController < ApplicationController
  before_action :set_character, only: %i[new create]

  def new
    @obligation = Obligation.new
  end

  def create
    @obligation = Obligation.new(obligation_params)
    @obligation.character = @character
    if @obligation.save
      redirect_to character_path(@character)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_character
    @character = Character.find(params[:character_id])
  end

  def obligation_params
    params.require(:obligation).permit(:character_id, :battle_id)
  end
end

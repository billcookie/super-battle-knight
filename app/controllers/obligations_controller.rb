class ObligationsController < ApplicationController
  before_action :set_characters, only: %i[new create]

  def new
    @obligation = Obligation.new
  end

  def create

  end


  private

  def set_character
    @character = Character.find(params[:character_id])
  end

  def obligation_params
    params.require(:obligation).permit(:character_id, :battle_id)
  end
end

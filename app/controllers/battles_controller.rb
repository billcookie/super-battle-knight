class BattlesController < ApplicationController
  def index
    @battles = Battle.all
  end

  def show
    @battle = Battle.find(params[:id])
  end

  def new
    @battle = Battle.new
  end

  def create
    @battle = Battle.new(battle_params)
    if @battle.save
      redirect_to battle_path(@battle)
    else
      render :new, status: unprocessable_entity
    end
  end

  private

  def battle_params
    params.require(:battle).permit(:title, :fight_date, :location, :result)
  end
end

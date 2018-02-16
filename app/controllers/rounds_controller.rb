class RoundsController < ApplicationController
  def show
    @round = Round.find(params[:id])
    @players = @round.team.players
  end
end

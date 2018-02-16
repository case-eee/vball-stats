class RoundsController < ApplicationController
  def new
    @team = Team.find(params[:id])
    @round = @team.rounds.new()
  end

  def create

  end

  def stats
    @round = Round.find(params[:id])
    @players = @round.team.players
  end

  def show
    @round = Round.find(params[:id])
    @players = @round.team.players
  end
end

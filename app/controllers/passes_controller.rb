class PassesController < ApplicationController
  def create
    round = Round.find(params[:round_id])
    player = Player.find(params[:player_id])

    pass = Pass.create!(player: player, round: round, score: params[:score])

    render json: pass
  end
end

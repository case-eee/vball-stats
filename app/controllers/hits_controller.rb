class HitsController < ApplicationController
  def create
    round = Round.find(params[:round_id])
    player = Player.find(params[:player_id])

    hit = Hit.create!(player: player, round: round, score: params[:score])

    render json: hit
  end
end

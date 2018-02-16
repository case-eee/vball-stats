class SpikesController < ApplicationController
  def create
    round = Round.find(params[:round_id])
  end
end

Rails.application.routes.draw do
  root "welcome#index"

  get "/teams/:id/rounds/new" => "rounds#new"
  get "/teams/:team_id/rounds/:id" => "rounds#show"
  post "/teams/:id/rounds" => "rounds#create"

  get "/rounds/:id/stats" => "rounds#stats"

  post "/rounds/:round_id/spikes/:player_id" => "spikes#create", as: :round_spike
  post "/rounds/:round_id/passes/:player_id" => "passes#create", as: :round_pass
  post "/rounds/:round_id/hits/:player_id" => "hits#create", as: :round_hit
end

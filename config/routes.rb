Rails.application.routes.draw do
  root "welcome#index"

  get "/rounds/:id" => "rounds#show"
end

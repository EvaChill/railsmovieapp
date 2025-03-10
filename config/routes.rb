Rails.application.routes.draw do
  root "movies#index"
  get "movies/:id", to: "movies#show", as: "movie"
  resources :movies, only: [ :index, :show ]
end

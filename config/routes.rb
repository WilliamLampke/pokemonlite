Rails.application.routes.draw do
  get '/fighters/:id', to: 'fighters#show'
  get '/fighters/:id/games', to: 'games#index'
  post '/fighters/:id/games', to: 'games#create'
  get '/fighters/:id/games/:id', to: 'games#show'
  patch '/fighters/:id/games/:id', to: 'games#edit'
  patch '/fighters/:id', to: 'fighters#edit'
end

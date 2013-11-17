FoodForest::Application.routes.draw do
  root to: 'home#index'

  resource :users
  resource :sessions, only: [:create]
  resources :forests
  resource :resources

  get '/signup' => 'users#new', as: 'signup'
  get '/login' => 'sessions#new', as: 'login'
  delete '/logout' => 'sessions#destroy'

  get 'auth/:provider/callback' => 'oauth#create'
  get 'auth/failure' => 'oauth#fail'
  get '/auth/facebook', as: 'facebook_oauth'

  get '/search' => 'home#search'
end

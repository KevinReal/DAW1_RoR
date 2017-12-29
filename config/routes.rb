Rails.application.routes.draw do
	root to: "articles#index"
  resources :results
  resources :competitions
  resources :player_stats
  resources :players
  resources :team_stats
  resources :teams
  resources :comments
  resources :articles do
    resources :comments
  end
	resources :users
  resource :session, only: [:new, :create, :destroy]
  get 'login' => "sessions#new", as: "login"
  get 'logout' => "sessions#destroy", as: "logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

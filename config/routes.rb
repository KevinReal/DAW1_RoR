Rails.application.routes.draw do
  resources :results
  resources :competitions
  resources :player_stats
  resources :players
  resources :team_stats
  resources :teams
  resources :comments
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

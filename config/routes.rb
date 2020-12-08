Rails.application.routes.draw do
  
  resources :teams
  # These are routes for navigation bar to work under game layer
  # which occurs during rendering 'Show' or 'New' views for games object
  get 'games/navigation_home' => 'home#home'
  get 'games/navigation_games' => 'games#index'
  get 'games/navigation_teams' => 'navigation#teams'
  get 'games/navigation_contact' => 'contact#contact'
  
  resources :games
  
  root 'home#home'

  post 'request_contact', to:"contact#request_contact"
  
  get 'contact', to:"contact#contact"

  get 'navigation_home', to:"home#home", as: :link

  get 'navigation_games', to:"games#index"

  get 'navigation_teams', to:"navigation#teams"

  get 'navigation_contact', to:"contact#contact"

  get '/search' => 'home#search'

  get 'seasonSearch' => 'home#seasonSearch'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

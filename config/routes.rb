Rails.application.routes.draw do
  

  # These are routes for navigation bar to work under game layer
  # which occurs during rendering 'Show' or 'New' views for games object
  get 'games/navigation_home' => 'home#home'
  get 'games/navigation_games' => 'games#index'
  get 'games/navigation_teams' => 'navigation#teams'
  get 'games/navigation_contact' => 'contact#contact'
  get 'games/:id/navigation_home' => 'home#home'
  get 'games/:id/navigation_games' => 'games#index'
  get 'games/:id/navigation_teams' => 'navigation#teams'
  get 'games/:id/navigation_contact' => 'contact#contact'

  get 'teams/navigation_home' => 'home#home'
  get 'teams/navigation_games' => 'games#index'
  get 'teams/navigation_teams' => 'teams#index'
  get 'teams/navigation_contact' => 'contact#contact'
  get 'teams/:id/navigation_home' => 'home#home'
  get 'teams/:id/navigation_games' => 'games#index'
  get 'teams/:id/navigation_teams' => "teams#index"
  get 'teams/:id/navigation_contact' => 'contact#contact'
  
  resources :teams
  resources :games
  
  root 'home#home'

  post 'request_contact', to:"contact#request_contact"
  
  get 'contact', to:"contact#contact"

  get 'navigation_home', to:"home#home"

  get 'navigation_games', to:"games#index"

  get 'navigation_teams', to:"teams#index"

  get 'navigation_contact', to:"contact#contact"

  get '/search' => 'home#search'

  get 'seasonSearch' => 'home#seasonSearch'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

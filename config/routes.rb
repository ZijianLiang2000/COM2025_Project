Rails.application.routes.draw do
  devise_for :users
  
  # These are routes for navigation bar to work under game layer
  # which occurs during rendering 'Show' or 'New' views for games object
  get 'games/navigation_home' => 'home#home'
  get 'games/navigation_games' => 'games#index'
  get 'games/navigation_teams' => 'navigation#teams'
  get 'games/navigation_contact' => 'contact#contact'
  get 'games/team_showUserTeam' => 'teams#showUserTeam'
  get 'games/team_setUserTeam' => 'teams#setUserTeam'
  get 'games/:id/navigation_home' => 'home#home'
  get 'games/:id/navigation_games' => 'games#index'
  get 'games/:id/navigation_teams' => 'navigation#teams'
  get 'games/:id/navigation_contact' => 'contact#contact'
  get 'games/:id/team_showUserTeam' => 'teams#showUserTeam'
  get 'games/:id/team_setUserTeam' => 'teams#setUserTeam'
  

  get 'teams/navigation_home' => 'home#home'
  get 'teams/navigation_games' => 'games#index'
  get 'teams/navigation_teams' => 'teams#index'
  get 'teams/navigation_contact' => 'contact#contact'
  get 'teams/team_showUserTeam' => 'teams#showUserTeam'
  get 'teams/team_setUserTeam' => 'teams#setUserTeam'
  get 'teams/:id/navigation_home' => 'home#home'
  get 'teams/:id/navigation_games' => 'games#index'
  get 'teams/:id/navigation_teams' => "teams#index"
  get 'teams/:id/navigation_contact' => 'contact#contact'
  get 'teams/:id/team_showUserTeam' => "teams#showUserTeam"
  get 'teams/:id/team_setUserTeam' => 'teams#setUserTeam'

  get 'users/navigation_home' => 'home#home'
  get 'users/navigation_games' => 'games#index'
  get 'users/navigation_teams' => 'teams#index'
  get 'users/navigation_contact' => 'contact#contact'
  get 'users/team_showUserTeam' => 'teams#showUserTeam'
  get 'users/team_setUserTeam' => 'teams#setUserTeam'
  get 'users/:id/navigation_home' => 'home#home'
  get 'users/:id/navigation_games' => 'games#index'
  get 'users/:id/navigation_teams' => "teams#index"
  get 'users/:id/navigation_contact' => 'contact#contact'
  get 'users/:id/team_showUserTeam' => "teams#showUserTeam"
  get 'users/:id/team_setUserTeam' => 'teams#setUserTeam'
  
  resources :teams
  resources :games
  
  root 'home#home'

  post 'request_contact', to:"contact#request_contact"
  
  get 'contact', to:"contact#contact"

  get 'navigation_home', to:"home#home"

  get 'navigation_games', to:"games#index"

  get 'navigation_teams', to:"teams#index"

  get 'navigation_contact', to:"contact#contact"

  get 'home_search' => 'home#search'

  get 'users_contact' => 'contact#contact'


  get 'team_showUserTeam' => 'teams#showUserTeam'

  get 'team_setUserTeam' => 'teams#setUserTeam'

  get 'team_cancelUserTeam' => 'teams#cancelUserTeam'

  get "game_showTeamGames" => "games#showTeamGames"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

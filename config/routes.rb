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
  
  # These are routes for navigation bar to work under game layer
  # which occurs during rendering 'Show' or 'New' views for teams object
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

  # These are routes for navigation bar to work under game layer
  # which occurs during rendering 'Show' or 'New' views for users object
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
  
  # resources routes packed up for teams and games
  resources :teams
  resources :games
  
  # route to home#home as home page of site
  root 'home#home'

  # route to post contact form to controller and view
  post 'request_contact', to:"contact#request_contact"

  # route to contact#contact view to write contact form
  get 'contact', to:"contact#contact"

  # route to home#home to be rendered in navigation controller
  get 'navigation_home', to:"home#home"

  # route to games#index to be rendered in navigation controller
  get 'navigation_games', to:"games#index"

  # route to games#teams to be rendered in navigation controller
  get 'navigation_teams', to:"teams#index"

  # route to contact#contact to be rendered in navigation controller
  get 'navigation_contact', to:"contact#contact"

  # route to home#search to search team home page
  get 'home_search' => 'home#search'

  # route to contact form
  get 'users_contact' => 'contact#contact'

  # route to user subscription page
  get 'team_showUserTeam' => 'teams#showUserTeam'

  # route to set user subscription page
  get 'team_setUserTeam' => 'teams#setUserTeam'

  # route to cancel user subscription of team
  get 'team_cancelUserTeam' => 'teams#cancelUserTeam'

  # route to show the games of corresponding selected team
  get "game_showTeamGames" => "games#showTeamGames"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  
  resources :games
  root 'home#home'

  post 'request_contact', to:"contact#request_contact"
  
  get 'contact', to:"contact#contact"

  get 'navigation_home', to:"home#home"

  get 'navigation_games', to:"navigation#games"

  get 'navigation_teams', to:"navigation#teams"

  get 'navigation_contact', to:"contact#contact"

  get '/search' => 'home#search'

  get 'seasonSearch' => 'home#seasonSearch'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

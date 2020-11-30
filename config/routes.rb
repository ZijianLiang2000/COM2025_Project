Rails.application.routes.draw do
  
  root 'home#home'

  post 'request_contact', to:"contact#request_contact"
  
  get 'navigation_home', to:"home#home"

  get 'navigation_games', to:"navigation#games"

  get 'navigation_table', to:"navigation#table"

  get 'navigation_contact', to:"contact#contact"

  get '/search' => 'home#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

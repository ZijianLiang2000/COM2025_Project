Rails.application.routes.draw do
  get 'navigation/home'

  get 'navigation/games'

  get 'navigation/table'

  get 'navigation/contact'

  root 'home#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

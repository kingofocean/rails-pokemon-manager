Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  resources :pokemons
  resources :types
  resources :attacks


  root to: 'pokemons#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

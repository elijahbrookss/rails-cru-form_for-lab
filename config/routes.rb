Rails.application.routes.draw do
  resources :songs, except: [:destroy]
  resources :genres, except: [:destroy]
  resources :artists, except: [:destroy]

  get 'songs/:id/edit', to: 'songs#edit'
  get 'genres/:id/edit', to: 'genres#edit'
  get 'artists/:id/edit', to: 'artists#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

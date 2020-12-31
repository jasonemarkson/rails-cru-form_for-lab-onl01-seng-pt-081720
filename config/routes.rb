Rails.application.routes.draw do
  # get 'genres/create'

  # get 'genres/update'

  # get 'genres/show'

  # get 'songs/create'

  # get 'songs/update'

  # get 'songs/show'

  # get 'artists/create'

  # get 'artists/update'

  # get 'artists/show'

  resources :artists, only: [:new, :edit, :show, :create, :update]
  resources :songs, only: [:index, :new, :edit, :show, :create, :update]
  resources :genres, only: [:new, :edit, :show, :create, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

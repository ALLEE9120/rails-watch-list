Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'movies#home'
  # Defines the root path route ('/')
  # root 'articles#index'
  get 'lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new', as: :new_list
  post 'lists', to: 'lists#create'
  get 'lists/:id', to: 'lists#show', as: :list
  get 'lists/bookmarks/new', to: 'bookmarks#new'
  post 'bookmarks', to: 'bookmarks#create'
  get 'bookmarks', to: 'bookmarks#index'
  delete 'bookmarks/:id', to: 'bookmarks#destroy'
  get 'movies', to: 'movies#index'
  get 'movies/:id', to: 'movies#show', as: :movie
  get 'movies/:id/bookmarks/new', to: 'bookmarks#new', as: :new_movie_bookmark
  get 'lists/:id/bookmarks', to: 'lists#bookmarks', as: :list_bookmarks
end

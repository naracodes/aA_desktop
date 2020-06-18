Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :create, :update, :destroy, :edit] do
    resources :artworks, only: [:index]
  end
  resources :artworks, only: [:index, :show, :create, :update, :destroy, :edit] do
    resources :users, only: [:index, :show]
  end

  resources :artwork_shares, only: [:create, :destroy]
  # resouces :artworks only: [:index, :show, :create, :update, :destroy, :edit]


  # get 'users/:id'
  # get 'users', to: 'users#index', as: 'users'
  # get 'users/:id', to: 'users#show', as: 'user'
  # post 'users', to: 'users#create', as: 'user'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # patch 'users/:id', to: 'users#update', as: 'user'
  # put 'users/:id', to: 'users#update', as: 'user'
  # get 'users/:id', to: 'users#edit', as: 'edit_user'
  # delete 'users/:id', to: 'users#destroy', as: 'user'
end
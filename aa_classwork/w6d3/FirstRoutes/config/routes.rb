Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users

  # get 'users/:id'
  get 'users', to: 'users#index', as: 'users'
  get 'users/:id', to: 'users#show', as: 'user'
  post 'users', to: 'users#create'
  get 'users/new', to: 'uers#new', as: 'new_user'
  patch 'users/:id', to: 'users#update'
  put 'users/:id', to: 'users#update'
  get 'users/:id', to: 'users#edit', as: 'edit_user'
  delete 'users/:id', to: 'users#destroy'
end

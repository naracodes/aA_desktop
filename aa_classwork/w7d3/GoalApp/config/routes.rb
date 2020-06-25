Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create] do
    resources :goals, only: [:index]
  end

  resources :goals, only: [:show, :new, :create, :destroy]
end
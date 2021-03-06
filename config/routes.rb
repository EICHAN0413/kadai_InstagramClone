Rails.application.routes.draw do
  
  root 'sessions#new'

  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy, :update]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :favorites, only: [:index,:create, :destroy]
  resources :contacts, only: [:new, :create, :show]

end

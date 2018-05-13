Rails.application.routes.draw do
  root to: "blogs#index"
  resources :favorites, only: [:create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :contacts do
  end
end
Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  resources :walks do
    resources :comments
    member do
      put "like" => "walks#like"
    end
  end

  root 'walks#index'

end

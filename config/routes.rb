Rails.application.routes.draw do
  resources :walks
  root 'walks#index'
end

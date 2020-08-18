Rails.application.routes.draw do
  resources :walks
  root 'walks#all'
end

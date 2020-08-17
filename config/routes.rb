Rails.application.routes.draw do
  resources :walks
  root 'walk#all'
end

Rails.application.routes.draw do
  resources :walks do
    resources :comments
  end
  root 'walks#all'
end

Rails.application.routes.draw do
  
  resources :walks
    resources :comments
  end
  root 'walks#index'
end

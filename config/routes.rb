Rails.application.routes.draw do
  devise_for :users
  root to: 'artworks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :artworks, only: %i[index show new create] do
      resources :bookings, only: %i[new create]
    end
    
    # resources :pages, only: %i[dashboard]
     get 'dashboard', to: 'pages#dashboard'
   end

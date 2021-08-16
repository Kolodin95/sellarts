Rails.application.routes.draw do
<<<<<<< HEAD
=======
  devise_for :users
>>>>>>> e74d5c994087f46577f0c7fb9f1074810a019173
  root to: 'artworks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artworks, only: %i[index show new create]
end

Rails.application.routes.draw do
  resources :outfit_clothings, only: [:create]
  get "/outfit_clothings/:outfit_id/new", to: "outfit_clothings#new", as: "new_outfit_clothing"
  
  resources :outfits
  resources :clothings, only: [:show, :index]
  resources :closets, only: [:index, :show, :create]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  delete '/logout', to: 'sessions#logout', as: "logout"
  get '/login', to: 'sessions#new_login', as: "new_login"
  post '/login', to: 'sessions#login'
end


Rails.application.routes.draw do

  root 'home#top'

  post "users/create" => "users#create"
  get "signup" => "users#new"
  post "login" => "users#login"
  get "login" => "users#login_form"
  post "logout" => "users#logout"
  post "users/:id/update" => "users#update"
  post "users/:id/destroy" => "users#destroy"

  get "index" => "rooms#index"
  post "rooms/create" => "rooms#create"
  post "rooms/:id/update" => "rooms#update"
  post "rooms/:id/destroy" => "rooms#destroy"

  

  resources :users
  resources :rooms do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [:index, :show]
end

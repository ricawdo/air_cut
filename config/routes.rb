Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/search", to: 'barber_shops#search'
  get "/profile", to: 'pages#profile'
  get "/users/:id/edit", to: 'pages#edit', as: 'user_edit'
  patch "/users/:id", to: 'pages#update'

  resources :barber_shops, only: [:index, :show]
  resources :bookings, only: [:new, :create, :show]
end

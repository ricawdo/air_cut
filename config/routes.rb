Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/search", to: 'barber_shops#search'

  resources :barber_shops, only: [:index, :show] do
    resources :booking_services, only: [:new, :create, :show]
  end
end

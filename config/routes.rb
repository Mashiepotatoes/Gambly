Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :experiences, only: [:index, :show] do
    collection do
      get :sample
      get :results
      get :filter
      end
    resources :favorites, only: [:new, :create]
  end

  resources :favorites, only: [:index, :destroy]
  resources :checkout, only: [:index, :create]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end

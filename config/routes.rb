Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events do
    resources :needs, only: [:new, :create]
  end

  resources :needs, only: [:show, :edit, :update, :destroy] do
    resources :donations, only: [:create]
  end

  resources :donations, only: [:show, :update, :destroy]

  get "/dashboard", to: "dashboards#show"
  get "/dashboard", to: "dashboards#owner"
end
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events
  resources :needs, only: [:new, :create, :show, :edit, :update, :destroy]
  get "/dashboard", to: "dashboards#show"
  get "/dashboard", to: "dashboards#owner"
end

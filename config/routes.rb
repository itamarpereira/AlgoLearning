Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :courses do
    resources :progresses, only: :create
    resources :comments, only: [:new, :create, :index]
    get 'visualization', to: 'courses#visualization'
    get 'lecture', to: 'courses#lecture'
    get 'code', to: 'courses#code'
    get 'video', to: 'courses#video'
  end
  resources :comments, only: :destroy

  resources :users, only: [:edit, :update]

  get 'dashboard', to: 'users#dashboard'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

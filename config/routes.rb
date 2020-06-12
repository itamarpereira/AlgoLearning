Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/about', to: 'pages#about'
  

  resources :courses do
    resources :progresses, only: :create
    resources :comments, only: :create

    member do
      get :lecture
      get :video
      get :code
      get :visualization
      get :comments
    end
  end


  resources :users, only: [:edit, :update] do
    
  end
    
  get '/dashboard', to: 'users#dashboard'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

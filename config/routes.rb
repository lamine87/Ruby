Rails.application.routes.draw do
  get 'users/edit'
  get 'users/show'
  get 'registrations/new'

  

  root "pages#home"
  # get ':token', to: 'pages#bonus'
  # get 'login', to: 'pages#login'

  resources :users, only: [:show, :edit, :update, :destroy]

  get 'contacts', to: 'contacts#index'
  get 'contacts/:surname', to: 'contacts#show'
  get 'languages', to: 'languages#index'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'terms', to: 'pages#terms'
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
 

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

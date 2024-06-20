Rails.application.routes.draw do

  root "pages#home"
  get ':token', to: 'pages#bonus'
  get 'contact', to: 'pages#contact'
  get 'login', to: 'pages#login'
  get 'contacts', to: 'contacts#index'
  get 'contacts/:surname', to: 'contacts#show'
  get 'languages', to: 'languages#index'
  get 'test', to: 'pages#test'
  # get 'friends', to: 'friends#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

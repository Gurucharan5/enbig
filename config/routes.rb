Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'pages#home'
  get '/products', to: 'pages#products'
  get '/health' ,to: 'pages#health'
  get '/business', to: 'pages#business'
  get '/blog' ,to: 'pages#blog'
  get '/contact', to: 'pages#contact'
  get '/aboutus', to: 'pages#aboutus'
  get '/admin', to: 'admin#login'
  post '/admin', to: 'admin#login' # Handle login form submission
end

Rails.application.routes.draw do
  get 'admin_dashboard/index'
  
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
  # get '/admin', to: 'admin#login'
  # post '/admin', to: 'admin#login' # Handle login form submission
  # get '/admin', to: 'admin_dashboard#index'

  devise_for :admins
  
  devise_scope :admins do  
    # get '/admins/sign_out' => 'devise/sessions#destroy' 
    get '/admin', to: 'admin_dashboard#index'    
    get 'admin_dashboard/option1'
    get '/admin_home', to: 'admin_dashboard#home'
    get '/admin_product', to: 'admin_dashboard#product'
    get '/admin_business', to: 'admin_dashboard#business'
    get '/admin_blog', to: 'admin_dashboard#blog'
  end
  # devise_scope :admin do
  #   delete 'admins/sign_out' => 'admins/sessions#destroy', :as => :destroy_admin_session
  #   # other custom routes...
  # end
end

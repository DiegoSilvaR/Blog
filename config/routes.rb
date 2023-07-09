Rails.application.routes.draw do
  resources :posts, except: [:index]
  get "posts",  to: "posts#index", as: "user_root"
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end

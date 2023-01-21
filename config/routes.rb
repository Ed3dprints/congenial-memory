Rails.application.routes.draw do
  resources :mpesas
  resources :products
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  post "/stkpush", to: "mpesas#stkpush"
  post "/stkquery", to: "mpesas#stkquery"
  # Defines the root path route ("/")
  # root "articles#index"
end

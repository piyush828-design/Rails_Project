Rails.application.routes.draw do
  get 'new/demo'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"

  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
  get "/articles1", to: "articles1#index1"
  #resources :articles

end

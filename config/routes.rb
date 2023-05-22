Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
  # root "articles#index"

  # resourceful Routing
  resources :articles do
    resources :comments
  end
  # get "/articles", to: "articles#index"
  # # get article with id
  # get "/articles/:id", to: "articles#show"
end

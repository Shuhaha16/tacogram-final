Rails.application.routes.draw do
  get "/", controller: "posts", action: "index"
  resources :posts
  resources :sessions
  resources :users
end

Rails.application.routes.draw do

  resources :genres
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root "shows#index", as: "chillflix"

  resources :users do
    resources :shows
  end

  resources :shows
  post "/shows/:id", to: "shows#show"

  resources :networks
  resources :programs
  get "/add_show/:id" => "shows#add_show", as: "add_show"
  resources :reviews, only: [:create]
end

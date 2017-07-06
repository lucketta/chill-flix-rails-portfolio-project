Rails.application.routes.draw do

  resources :genres
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root "shows#index", as: "chillflix"

  resources :users do
    resources :shows
  end
  resources :shows

  resources :networks
  resources :programs
  get "/add_show/:id" => "shows#add_show", as: "add_show"
end

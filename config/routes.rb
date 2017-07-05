Rails.application.routes.draw do

  devise_for :users
  root "shows#index", as: "chillflix"
  resources :users do
    resources :shows
  end
  resources :shows

  resources :networks
  resources :programs

end

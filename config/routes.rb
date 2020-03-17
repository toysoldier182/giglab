# == Route Map
#

Rails.application.routes.draw do
  root to: "pages#index"
  resources :boards do
    resources :lists
  end

  resources :lists do
    resources :cards
  end
  devise_for :users
end

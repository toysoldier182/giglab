Rails.application.routes.draw do
  root to: "pages#index"
  resources :boards
  devise_for :users
end

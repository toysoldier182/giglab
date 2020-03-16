Rails.application.routes.draw do
  root to: "pages#index"
  resources :boards do
    resources :lists
  end
  devise_for :users
end

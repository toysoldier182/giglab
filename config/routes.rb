Rails.application.routes.draw do
  root to: "pages#index"
  resources :boards, only: [ :index, :show ]
  devise_for :users
end

Rails.application.routes.draw do
  root to: 'dashboard#index'
  resource :dashboard, only: [:index]
  resource :sessions, only: [:new, :create, :destroy]
end

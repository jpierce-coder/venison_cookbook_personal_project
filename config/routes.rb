Rails.application.routes.draw do
  resources :recipes, only: %i[new create edit update show destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'about', to: 'about#index', as: :about
  get 'settings', to: 'settings#index', as: :settings
  get 'login', to: 'login#index', as: :login
  get 'saved', to: 'saved#index', as: :saved
  get 'signup', to: 'signup#index', as: :signup

  root to: 'main#index'
end

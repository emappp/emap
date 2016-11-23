Rails.application.routes.draw do

  get 'home/index'

  resources :jobs
  get 'admin/index'
  get 'guard/index'
  get 'supervisor/index'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'admin/activation'
  resources :users

  get 'admin' => 'admin#index'
  controller :sessions do
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    get '/logout',  to: 'sessions#destroy'
  end

  root 'home#index'

end

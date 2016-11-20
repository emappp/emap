Rails.application.routes.draw do

  get 'profile/index'

  get 'admin/index'
  get 'sessions/create'
  get 'sessions/destroy'


  resources :users

  get 'admin' => 'admin#index'
  controller :sessions do
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    get '/logout',  to: 'sessions#destroy'
  end

  root 'admin#index'

end

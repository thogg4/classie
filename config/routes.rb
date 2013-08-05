Classie::Application.routes.draw do

  resources :ads

  resources :users do
    resources :ads
  end

  resources :cats

  resources :admin
  get 'admin' => 'admin@index', as: 'admin'

  resources :sessions
  get 'signin' => 'sessions#new', as: 'signin'
  get 'signout' => 'sessions#destroy', as: 'signout'

  root to: 'ads#index'

end

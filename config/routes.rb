Classie::Application.routes.draw do

  resources :ads

  resources :users do
    resources :ads
  end

  resources :sessions
  get 'signin' => 'sessions#new', as: 'signin'
  get 'signout' => 'sessions#destroy', as: 'signout'

  root to: 'ads#index'

end

Rails.application.routes.draw do
  devise_for :users
  root to: 'planets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :planets

  get 'planets/:id', to: 'planets#show'

  get '/dashboard', to: 'pages#dashboard'

end

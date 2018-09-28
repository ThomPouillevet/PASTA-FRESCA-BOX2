Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pasta_types, only: [:index, :show]
  resources :formules, only: [:index]

end

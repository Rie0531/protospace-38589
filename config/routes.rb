Rails.application.routes.draw do
  devise_for :users 
  
  get 'new_prototype', to: 'prototypes#new'
  post 'prototypes', to: 'prototypes#create'
  root to: "prototypes#index"

  resources :prototypes, only: [:index, :new, :create]

end

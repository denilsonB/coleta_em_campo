Rails.application.routes.draw do
  resources :answers
  post 'authenticate', to: 'authentication#authenticate'#authenticate user
  
  #resources
  resources :visits
  resources :users
  resources :questions do
    resources :file_uploads, only: [:new, :create, :destroy]
  end
  resources :formularies
end

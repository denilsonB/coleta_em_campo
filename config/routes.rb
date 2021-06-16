Rails.application.routes.draw do
  
  resources :questions
  resources :formularies
  post 'authenticate', to: 'authentication#authenticate'#authenticate user
  
  
  
  #resources
  resources :visits
  resources :users
end

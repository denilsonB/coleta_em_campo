Rails.application.routes.draw do
  
  post 'authenticate', to: 'authentication#authenticate'#authenticate user
  
  
  
  #resources
  resources :visits
  resources :users
end

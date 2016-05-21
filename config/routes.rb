Rails.application.routes.draw do
  devise_for :users
  
  get '/projects', to: 'messages#proj'
  get '/ideas', to: 'messages#idea'
  get '/categories', to: 'messages#cat'
  get '/profiles', to: 'user#index'

  resources :messages do 
  	resources :comments
  end
  root 'messages#index'
  resources :user
end

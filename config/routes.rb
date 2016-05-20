Rails.application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :users
  get '/projects', to: 'messages#proj'
  get '/ideas', to: 'messages#idea'
  get '/categories', to: 'messages#cat'

  resources :messages do 
  	resources :comments
  end
  root 'messages#index'
  resources :user
end

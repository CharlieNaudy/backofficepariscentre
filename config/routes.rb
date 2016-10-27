Rails.application.routes.draw do
  resources :users
  resources :meetings
  get 'home/index'
  root 'home#index'
  post 'users/:id/create_meeting' => 'users#create_meeting'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :users
  post 'users/authenticate' => 'user_token#create'
  resources :userdates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

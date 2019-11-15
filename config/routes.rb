Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
  	resources :comments 
  end

  # resources :auth do
  #   get 'login'
  # end
  get 'auth/login', to: 'auth#login'

  root 'posts#index'
end

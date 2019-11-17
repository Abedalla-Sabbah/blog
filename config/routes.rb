Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'website#index'
  get '/auth/login', to: 'auth#login'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/admin' , to: 'admin#create'
  get '/dashboard' , to: 'posts#index'
  get '/reg', to: "auth#reg"

  resources :posts do
  	resources :comments 
  end

  # # resources :auth do
  # #   get 'login'
  # # end
  
  
end

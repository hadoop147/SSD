Rails.application.routes.draw do
  get 'cart/index'

  resources :items
  root 'static_pages#home'
    
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  get '/items' => 'items#index'
  get '/login' => 'user#login'
  get '/logout' => 'user#logout'
  get '/cart' => 'cart#index'
  get '/cart/:id' => 'cart#add'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
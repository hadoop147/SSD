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
  get '/shipment' => 'static_pages#shipment'
  get '/support' => 'static_pages#support'
  get '/returns' => 'static_pages#returns'
  get '/giftcard' => 'static_pages#giftcard'
  get '/payment' => 'static_pages#payment'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
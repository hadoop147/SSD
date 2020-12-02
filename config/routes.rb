Rails.application.routes.draw do
  
  resources :orders do
    resources:orderitems
  end
  
  #resources :orders
  
  devise_for :users do
    resources:orders
  end 
  get '/checkout' => 'cart#createOrder'
  
  #devise_for :users
  get 'cart/index'

  resources :items
  root 'static_pages#home'
  
  get '/items' => 'items#index'
  
  #get '/login' => 'user#login'
  #get '/logout' => 'user#logout'
  #get '/register' => 'user#register'
  
  get '/cart' => 'cart#index'
  get 'cart/index'
  get '/cart/:id' => 'cart#add'
  get '/clearcart' => 'cart#clearcart'
  get '/remove/:id' => 'cart#remove'
  get '/decrease/:id' => 'cart#decrease'
  get '/increase/:id' => 'cart#increase'
  
  get '/paid/:id' => 'static_pages#paid'
  
  get '/admin' => 'static_pages#admincontrol'
 
  get '/done' => 'cart#done'
  
    
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  get '/shipment' => 'static_pages#shipment'
  get '/support' => 'static_pages#support'
  get '/returns' => 'static_pages#returns'
  get '/giftcard' => 'static_pages#giftcard'
  get '/payment' => 'static_pages#payment'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

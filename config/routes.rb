Rails.application.routes.draw do
  
  resources :shippings
  resources :payments
  resources :products
  resources :offers
  resources :brands
  resources :categories
  resources :addresses
  resources :admins
  resources :customers
  resources :orders do
    resources:orderitems
  end
  
  #resources :orders
  
  devise_for :admin do
    resources:orders.all
  end
  
  devise_for :users do
    resources:orders
  end
  
  get '/checkout' => 'cart#createOrder'
  
  #devise_for :users
  get 'cart/index'

  resources :items
  root 'static_pages#home'
  
  get '/items' => 'items#index'
  get '/products' => 'products#index'
  
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
  get '/done' => 'cart#done'
  
  get '/admin' => 'static_pages#admincontrol'
  
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  get '/shipment' => 'static_pages#shipment'
  get '/support' => 'static_pages#support'
  get '/returns' => 'static_pages#returns'
  get '/offers' => 'static_pages#offers'
  get '/payment' => 'static_pages#payment'
  get '/brands' => 'static_pages#brands'
  get '/categories' => 'static_pages#categories'
  get '/addresses' => 'static_pages#addresses'
  
  get'/search' => 'search_pages#search'

end
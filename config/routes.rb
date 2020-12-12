Rails.application.routes.draw do
  
  resources :items
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
  
  
  #security measures for app - permissions for different users
  devise_for :admin do
    resources:orders.all
  end
  
  devise_for :users do
    resources:orders
  end
  
  #get '/login' => 'user#login'
  #get '/logout' => 'user#logout'
  #get '/register' => 'user#register'
  
  root 'static_pages#home'
  
  get '/items' => 'items#index'
  get '/products' => 'products#index'
  
  #cart section
  get '/checkout' => 'cart#createOrder'
  get 'cart/index'
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
  get '/shippings' => 'static_pages#shippings'
  get '/support' => 'static_pages#support'
  get '/returns' => 'static_pages#returns'
  get '/offers' => 'static_pages#offers'
  get '/payments' => 'static_pages#payments'
  get '/brands' => 'static_pages#brands'
  get '/addresses' => 'static_pages#addresses'
  get '/customers' => 'static_pages#customers'
  
  get '/men' => 'static_pages#men'
  get '/women' => 'static_pages#women'
  get '/kids' => 'static_pages#kids'
  #get '/search' => 'search_pages#search'
  get '/categories' => 'static_pages#categories'
  #get '/category/:title' => 'static_pages#category'
  
  get '/category' => 'static_pages#category'
  get '/category/:cat_name' => 'static_pages#category'
  
  post '/search' => 'items#search'
  get '/search' => 'static_pages#search'
  get '/search/:title' => 'static_pages#search'
  
  get '/shoes' => 'static_pages#shoes'
  
end
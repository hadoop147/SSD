class CartController < ApplicationController
  def index
    #build logic to pass the cart data to the view
    if session[:cart] then #check if cart exists
      @cart=session[:cart]#if the cart does exist then all the items to be displayed on the cart index page are all the items in that cart 
    else
      @cart={}#if the cart doesn't exist then set the cart to be an empty object
    end
  end 
  
  def add#find id of product to add to cart
    id=params[:id]#find id of product to cart
    if session[:cart]then#find cart to to put product in or create a new cart
      cart=session[:cart]#if exists use it
    else
      session[:cart]={}#if it does not exist then make one
      cart=session[:cart]#make the cart an empty cart at that time
    end
    #control the products in the cart
    if cart[id] then# check if product is in cart
      cart[id]=cart[id]+1#if it is then increase quanitiy by 1
    else
      cart[id]=1#if it was not in the cart then add one now
    end
      #send the user somewhere noew that the product is added
      redirect_to :action => :index
  end
end
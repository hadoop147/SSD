class StaticPagesController < ApplicationController
  
  def home
    #@categories = Category.all
  end

  def about
  end

  def contact
  end
  
  def shipment
  end
  
  def support
    #session[:cart] = nil #a little hack to clear cart if you make error and it refuses to clear the session and clears the error in your code
  end
  
  def returns 
  end
  
  def payment
  end
  
  def giftcard
  end
  
  def admincontrol
    @orders = Order.all
  end

  def paid
    @order = Order.last
    @order.update_attribute(:status, 'Order Paid')
  end
  
  def categories
    @categories = Category.all
  end
  
end
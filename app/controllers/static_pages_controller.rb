class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end
  
  def shipment
  end
  
  def support
    #session[:cart] = nil #a little hack to clear cart if you make error and it refuses to clear the session and clears the errpr in your code
  end
  
  def returns 
  end
  
  def payment
  end
  
  def giftcard
  end
end

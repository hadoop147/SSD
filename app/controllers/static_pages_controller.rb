class StaticPagesController < ApplicationController
  
  def home
    @categories = Category.all
  end
  
  #def shoes
  # @categories = Category.all
  # running = params[:cat_name]
  # @items = Item.where("category like ?", running)
  #end
  
  def men
    #@categories = Category.all(:select => "DISTINCT(mens_running)")
    @categories = Category.all
    #@category = Category.find(params[:id])
    #@category = Category.where(project_id:'Mens Running')
    #@category = Category.find_by(name: 'Mens Running')
  end
  
  def women
    @categories = Category.all
  end
  
  def kids
    @categories = Category.all
  end
  
  def category
    running = params[:cat_name]
    @items = Item.where("category like ?", running)
    #@products = Product.where(category_id: @category.id)
    #@products = Product.where("category like ?", running)
    #@items = Item.all
  end
  
  #def categories
  #  @categories = Category.all
  #end
  
  def about
  end

  def contact
  end
  
  def shipment
  end
  
  #def support
    #session[:cart] = nil #a little hack to clear cart if you make error and it refuses to clear the session and clears the error in your code
  #end
  
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

end
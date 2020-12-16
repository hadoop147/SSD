class StaticPagesController < ApplicationController

  def home
    #@categories = Category.all
    #@items = Items.all
  end

  #def shoes
   #@categories = Category.all
  # running = params[:cat_name]
  # @items = Item.where("category like ?", running)
  #end

  def men
    @categories = Category.all
    #shoes = params[:cat_name]
    #@items = Item.where("item like ?", shoes)
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

  def search
     st = "%#{params[:q]}%"
     @items = Item.where("title like ?", st)
  end

  #def search
    #running = params[:title]
    #@items = Item.where("category like ?", running)
    #end
  #end

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
#dealing with admin rules
  def admincontrol
    @users = User.all
    @orders = Order.all
  end

  def makeadmin
  @user = User.find_by(id: params[:id])
  @user.update_attribute(:admin, true)
  redirect_to "/"
  #redirect_to :controller => :"/"
  end

  def removeadmin
    @user = User.find_by(id: params[:id])
    @user.update_attribute(:admin, false)
    redirect_to "/"
    #redirect_to :controller => :"/"
  end

#Dealing with order payment
  def paid
    @order = Order.last
    @order.update_attribute(:status, 'Order Paid')
  end

end
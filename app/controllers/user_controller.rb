class UserController < ApplicationController
    
    def login
      session[:login] = 1
      flash[:notice] = "Logged in"
      redirect_to :controller => :items
    end
    
    def logout
      session[:login] = nil
      flash[:notice] = "You have Logged Out"
      redirect_to :controller => :items
    end
    
end

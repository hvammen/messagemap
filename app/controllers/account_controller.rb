class AccountController < ApplicationController
  layout  'default'
  
  def index

  end

  def login
    case request.method
      when :post
        if session[:user] = User.authenticate(params[:user][:user_username], params[:user][:user_password])

          flash[:notice]  = "Login successful"
          redirect_back_or_default :controller => 'map', :action => 'show', :id => session[:user][:user_username]
        else
          flash[:notice] = "Login unsuccessful"
          redirect_back_or_default :action => 'index'
      end
    end
  end
  
  def signup
    case request.method
      when :post
        @user = User.new(params[:user])
        
        if @user.save
          session[:user] = User.authenticate(params[:user][:user_username], params[:user][:user_password])
          flash['notice']  = "Signup successful"
          redirect_back_or_default :controller => 'map', :action => 'show', :id => session[:user][:user_username]
        else
          flash['notice'] = @user.errors
        end
      when :get
        @user = User.new
    end      
  end  
  
  def delete
    if params[:id] and session[:user]
      @user = User.find(params[:id])
      @user.destroy
    end
    redirect_back_or_default :action => 'welcome'
  end  
    
  def logout
    session[:user] = nil
    redirect_back_or_default :action => 'index'
  end
    
  def welcome
  end
  
end

class AuthController < ApplicationController
  def login
    if request.post?
      user = User.find_by_username(params[:username])
      if user && user.password == params[:password]
        session[:user_id] = user.id
        redirect_to :controller => 'users', :action => 'index'
      else
        flash[:error] = "Invalid user name/password."
        redirect_to :back
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to :controller => 'auth', :action => 'login'
  end
end

class ApplicationController < ActionController::Base
  #before_filter :authenticate, :except => 'login'
  protect_from_forgery
  #helper_method :current_user

  def authenticate
    if !session[:user_id]
      flash[:error] = 'Please login before proceed.'
      redirect_to :controller => 'auth', :action => 'login'
    end
  end

end

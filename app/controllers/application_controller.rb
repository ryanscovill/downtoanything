class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  private

  def confirm_logged_in
      unless session[:user_id]
        flash[:notice] = "Please log in."
        redirect_to(:controller => 'access', :action => "login")
        return false #halts the before_action
      else
        return true
      end
    end
    
 def is_admin
    if confirm_logged_in
      @user = User.find(session[:user_id])
      return @user.admin
    else
      return false
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end
end
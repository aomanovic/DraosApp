class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def is_logged
    if session[:user_id].nil?
      flash[:error] = ( "user does_not_have_permission")
      redirect_to root_path, :notice => ("user not_logged_in")
    end
  end


end

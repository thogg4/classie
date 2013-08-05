class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_time_zone

  def require_login
    if !logged_in?
      unauthorized('You must sign in first.')
    else
      @user = current_user
    end
  end

  def unauthorized(message)
    session[:return_to_url] = request.url if request.get?
    redirect_to signin_path
    flash[:error] = message
  end

  def set_time_zone
    Time.zone = 'Eastern Time (US & Canada)'
  end

end

<<<<<<< HEAD
class SessionsController < ApplicationController

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_to user_path(@user), notice: 'Logged in. Atta kid!'
    else
      flash[:error] = 'The Email or Password you entered is incorrect'
      redirect_to signin_path
=======
# This controller handles the login/logout function of the site.  
class SessionsController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem

  # render new.erb.html
  def new
  end

  def create
    logout_keeping_session!
    user = User.authenticate(params[:login], params[:password])
    if user
      # Protects against session fixation attacks, causes request forgery
      # protection if user resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset_session
      self.current_user = user
      new_cookie_flag = (params[:remember_me] == "1")
      handle_remember_cookie! new_cookie_flag
      
      flash[:notice] = "Logged in successfully"
      if session[:return_to] == "new_ad"
        redirect_to(new_user_ad_path(current_user))
      elsif session[:return_to] == "my_ads"
        redirect_to(username_path(current_user))
      else
        redirect_to(root_path)
      end
      session[:return_to] = nil
      
    else
      note_failed_signin
      @login       = params[:login]
      @remember_me = params[:remember_me]
      render :action => 'new'
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
    end
  end

  def destroy
<<<<<<< HEAD
    logout
    redirect_to root_path, notice: 'Logged Out'
  end

=======
    logout_killing_session!
    flash[:notice] = "You have been logged out."
    redirect_back_or_default('/')
  end

protected
  # Track failed login attempts
  def note_failed_signin
    flash[:error] = "Couldn't log you in as '#{params[:login]}'"
    logger.warn "Failed login for '#{params[:login]}' from #{request.remote_ip} at #{Time.now.utc}"
  end
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
end

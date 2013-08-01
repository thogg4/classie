class UsersController < ApplicationController
  
<<<<<<< HEAD
=======
  

  # render new.rhtml
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
  def new
    @user = User.new
  end
 
  def create
<<<<<<< HEAD
    @user = User.new(params[:user])
    if @user.save
      auto_login(@user)
      redirect_to root_path, notice: "Thanks for signing up!"
    else
      render :new
    end
  end
  
=======
    logout_keeping_session!
    @user = User.new(params[:user])
    success = @user && @user.save
    if success && @user.errors.empty?
      self.current_user = @user # !! now logged in
      redirect_to(root_path)
      flash[:notice] = "Thanks for signing up!"
    else
      flash[:error]  = "We couldn't set up that account, sorry.  Please try again."
      render :action => 'new'
    end
  end
  
  
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
  def update
    if current_user.update_attributes(params[:user])
      current_user.ads.each do |ad|
        ad.city = current_user.city
        ad.state = current_user.state
        ad.save
      end
      flash[:notice] = "Your account and your ads have been updated."
    else
      flash[:error] = "Something went wrong and your account was not updated. Please try again."
    end
    redirect_to(username_path(current_user))
  end
  
  def show
    if logged_in?
      @ads = current_user.ads
    else
      session[:return_to] = "my_ads"
      redirect_to(login_path)
      flash[:notice] = "You must sign in before you can see your ads. Don't have an account? Click Sign Up to create one."
    end
  end
<<<<<<< HEAD

=======
  
  
  
  
  
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
end

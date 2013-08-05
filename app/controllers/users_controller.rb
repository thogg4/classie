class UsersController < ApplicationController
  before_filter :require_login, only: [:edit, :update, :show]

  def show
    @ads = @user.ads
  end
  
  def new
    @user = User.new
  end
 
  def create
    @user = User.new(params[:user])
    if @user.save
      auto_login(@user)
      redirect_to root_path, notice: "Thanks for signing up!"
    else
      render :new
    end
  end

  def edit
  end
  
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
  
end

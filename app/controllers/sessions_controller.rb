class SessionsController < ApplicationController

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_to user_path(@user), notice: 'Logged in. Atta kid!'
    else
      flash[:error] = 'The Email or Password you entered is incorrect'
      redirect_to signin_path
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: 'Logged Out'
  end

end

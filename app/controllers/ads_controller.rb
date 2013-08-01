class AdsController < ApplicationController
    
  def index    
    @ads = Ad.search(params[:search])
  end
  
  def browse
    @cats = Cat.find(:all, :order => "position")
  end
  
  def search
    @ads = Ad.search(params[:search])
  end

  def show
    @ad = Ad.find(params[:id])
    @assets = @ad.assets
    @user = User.find(params[:user_id])
  end

  def new
    if logged_in?
      @ad = Ad.new
      @cats = Cat.find(:all, :conditions => ["admin is null OR admin = ?", false])
    else
<<<<<<< HEAD
      redirect_to login_path, notice: "Sign in to create an ad. Don't have an account? Click Sign Up to create one."
=======
      session[:return_to] = "new_ad"
      redirect_to(login_path)
      flash[:notice] = "Sign in to create an ad. Don't have an account? Click Sign Up to create one."
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
    end
  end
  
  def change_sub_cats_select
    @cat_val = params[:cat_val]
    @cat = Cat.find(@cat_val)
    @subcats = @cat.sub_cats.find(:all, :conditions => ["admin is null OR admin = ?", false])
    
    respond_to do |wants|
      wants.json { render :json => @subcats }
<<<<<<< HEAD
    end    
  end

  def create
    @ad = current_user.ads.build(params[:ad].merge(city: current_user.city, state: current_user.state, views: 0))
    if @ad.save
      redirect_to user_path(current_user)
    else
      render :new
=======
    end

    
  end

  def create
    @ad = current_user.ads.build(params[:ad])
    @ad.city = current_user.city
    @ad.state = current_user.state
    @ad.views = 0
    if @ad.save
      redirect_to(new_user_ad_asset_path(current_user, @ad))
    else
      flash[:error] = "Something happened and your ad was not saved. Please try again."
      redirect_to(username_path(current_user))
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
    end
  end

  def edit
    @ad = Ad.find(params[:id])
    @cats = Cat.find(:all, :conditions => ["admin is null OR admin = ?", false])
    @assets = @ad.assets
    @asset = Asset.new
  end
  
<<<<<<< HEAD
=======

>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
  def update
    @ad = Ad.find(params[:id])
    if @ad.update_attributes(params[:ad])
      flash[:notice] = "Successfully updated ad."
      redirect_to(edit_user_ad_path(current_user, @ad))
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    flash[:notice] = "Successfully destroyed ad."
    redirect_to(username_path(current_user))
  end
  
  def views
    @ad = Ad.find(params[:id])
    @ad.increment!(:views)
  end
<<<<<<< HEAD

=======
  
  
  
  
  
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
end

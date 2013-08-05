class AdsController < ApplicationController
  before_filter :require_login, only: [:new]
    
  def index    
    @ads = Ad.search(params[:search])
  end

  def show
    @ad = Ad.find(params[:id])
  end

  def new
    redirect_to new_user_ad_path(@user) if !params[:user_id]
    @ad = Ad.new
    @cats = Cat.where("admin is null OR admin = ?", false)
  end
  
  def create
    @ad = current_user.ads.build(params[:ad].merge(city: current_user.city, state: current_user.state, views: 0))
    if @ad.save
      redirect_to user_path(current_user)
    else
      @cats = Cat.where("admin is null OR admin = ?", false)
      render :new
    end
  end

  def edit
    @ad = Ad.find(params[:id])
    @cats = Cat.where("admin is null OR admin = ?", false)
  end
  
  def update
    @ad = Ad.find(params[:id])
    if @ad.update_attributes(params[:ad])
      flash[:notice] = "Successfully updated ad."
      redirect_to user_path(current_user)
    else
      @cats = Cat.where("admin is null OR admin = ?", false)
      render :edit
    end
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    flash[:notice] = "Successfully destroyed ad."
    redirect_to(username_path(current_user))
  end

  def change_sub_cats_select
    @cat_val = params[:cat_val]
    @cat = Cat.find(@cat_val)
    @subcats = @cat.sub_cats.find(:all, :conditions => ["admin is null OR admin = ?", false])
    
    respond_to do |wants|
      wants.json { render :json => @subcats }
    end    
  end
  
  def views
    @ad = Ad.find(params[:id])
    @ad.increment!(:views)
  end

end

class AssetsController < ApplicationController
  
  before_filter :get_ad_id, :except => "show"
  
  def index
    @assets = Asset.all
  end



  #show is my photo viewer page
  def show
    @image = params[:image]
    render :layout => "bare"
  end




  def new
    @asset = Asset.new
    @ad = Ad.find(params[:ad_id])
    @assets = @ad.assets
  end

  def create
    @asset = Asset.new(params[:asset])
    @asset.ad_id = @ad.id
    if @asset.save
      if params[:commit] == "Add"
        flash[:notice] = "Photo added"
        redirect_to(edit_user_ad_path(current_user, @ad))
      else
        flash[:notice] = "Photo added"
        redirect_to(new_user_ad_asset_path(current_user, @ad))
      end
    else
      render :action => 'new'
    end
  end

  def edit
    @asset = Asset.find(params[:id])
  end

  def update
    @ad = Ad.find(params[:ad_id])
    @asset = Asset.find(params[:id])
    if @asset.update_attributes(params[:asset])
      flash[:notice] = "Successfully updated asset."
      redirect_to(edit_user_ad_path(current_user, @ad))
    else
      render :action => 'edit'
    end
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    flash[:notice] = "Photo deleted"
    redirect_to(edit_user_ad_path(current_user, @ad))
  end
end

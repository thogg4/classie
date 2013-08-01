class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def create
    @cat = Cat.new(params[:cat])
    if @cat.save
      flash[:notice] = "Successfully created cat."
      redirect_to(admin_path)
    else
      render :action => 'new'
    end
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update_attributes(params[:cat])
      flash.now[:notice] = "Successfully updated cat."
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    flash[:notice] = "Successfully destroyed cat."
    redirect_to(admin_path)
  end

end

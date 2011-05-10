class SubCatsController < ApplicationController
  
  
  def new
    @sub_cat = SubCat.new
  end
  
  def create
    @cat = Cat.find(params[:cat_id])
    @sub_cat = @cat.sub_cats.build(params[:sub_cat])
    if @sub_cat.save
      redirect_to(admin_path)
    else
    end
  end
  
  def prioritize_sub_cats
    cat = Cat.find(params[:cat_id])
    sub_cats = cat.sub_cats
    sub_cats.each do |sub_cat|
      sub_cat.position = params["sub_cat"].index(sub_cat.id.to_s)
      sub_cat.save
    end
    render :nothing => true
  end
  
  def update
    @cat = Cat.find(params[:cat_id])
    @sub_cat = @cat.sub_cats.find(params[:id])
    @sub_cat.update_attributes(params[:sub_cat])
  end
  
  def destroy
    @sub_cat = SubCat.find(params[:id])
    @sub_cat.destroy
    redirect_to(admin_path)
  end

  def edit
  end

end

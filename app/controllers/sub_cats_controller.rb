class SubCatsController < ApplicationController
  
<<<<<<< HEAD
=======
  
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
  def new
    @sub_cat = SubCat.new
  end
  
  def create
    @cat = Cat.find(params[:cat_id])
    @sub_cat = @cat.sub_cats.build(params[:sub_cat])
    if @sub_cat.save
      redirect_to(admin_path)
<<<<<<< HEAD
=======
    else
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
    end
  end
  
  def prioritize_sub_cats
    cat = Cat.find(params[:cat_id])
    sub_cats = cat.sub_cats
    sub_cats.each do |sub_cat|
      sub_cat.position = params["sub_cat"].index(sub_cat.id.to_s)
      sub_cat.save
    end
<<<<<<< HEAD
    render :nothing
=======
    render :nothing => true
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
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

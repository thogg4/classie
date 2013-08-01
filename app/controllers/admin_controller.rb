class AdminController < ApplicationController
<<<<<<< HEAD

  def index
    @ads = Ad.all
     
=======
  def index
    @ads = Ad.all
    
    
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
    # for categories
    @cats = Cat.find(:all, :order => "position")
    @cat = Cat.new
    @sub_cat = SubCat.new
  end

end

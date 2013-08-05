class AdminController < ApplicationController

  def index
    @ads = Ad.page(params[:page])
     
    @cats = Cat.find(:all, :order => "position")
    @cat = Cat.new
    @sub_cat = SubCat.new
  end

end

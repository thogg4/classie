class SubCat < ActiveRecord::Base
  attr_accessible :cat_id, :name

  belongs_to :cat
end

class Cat < ActiveRecord::Base
  has_many :sub_cats
  
  attr_accessible :name, :admin, :position
end

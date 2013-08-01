class Cat < ActiveRecord::Base
  attr_accessible :name, :admin, :position

  has_many :sub_cats
end
